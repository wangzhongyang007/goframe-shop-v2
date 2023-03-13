package kafka

import (
	"fmt"
	"github.com/Shopify/sarama"
	"github.com/gogf/gf/v2/errors/gerror"
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/os/gctx"
	"os"
	"sync"
)

// 读取配置文件初始化
func init() {
	mq, err := g.Cfg().Get(gctx.New(), "mq")
	if err != nil {
		panic(err)
	}
	ip := mq.Map()["kafka"].(string)
	pool := []string{ip}
	builder := NewKafkaBuilder(pool)
	kafkaPool := NewKafkaPool().SetBuilder(builder)
	err = kafkaPool.Init()
	if err != nil {
		fmt.Println("初始化kafka失败：", err.Error())
		os.Exit(1)
	}
}

type kafkaBuilder struct {
	addr   []string //地址 集群或单机
	config *sarama.Config
}

func (k *kafkaBuilder) SetAddr(addr []string) IKafkaBuilder {
	k.addr = addr
	return k
}

func (k *kafkaBuilder) GetAddr() []string {
	return k.addr
}

func (k *kafkaBuilder) GetConfig() *sarama.Config {
	config := sarama.NewConfig()
	// 等待服务器所有副本都保存成功后的响应
	config.Producer.RequiredAcks = sarama.WaitForAll
	// 随机的分区类型：返回一个分区器，该分区器每次选择一个随机分区
	config.Producer.Partitioner = sarama.NewRandomPartitioner
	// 是否等待成功和失败后的响应
	config.Producer.Return.Successes = true
	config.Producer.Return.Errors = true
	k.config = config
	return config
}

func NewKafkaBuilder(addr []string) IKafkaBuilder {
	//创建消息发布者
	config := sarama.NewConfig()
	// 等待服务器所有副本都保存成功后的响应
	config.Producer.RequiredAcks = sarama.WaitForAll
	// 随机的分区类型：返回一个分区器，该分区器每次选择一个随机分区
	config.Producer.Partitioner = sarama.NewRandomPartitioner
	// 是否等待成功和失败后的响应
	config.Producer.Return.Successes = true

	builder := &kafkaBuilder{
		addr:   addr,
		config: config,
	}
	return builder
}

type kafkaPool struct {
	Builder  IKafkaBuilder
	Producer sarama.SyncProducer
	Consumer sarama.Consumer
}

var once sync.Once
var instance *kafkaPool

// 单例对象
func NewKafkaPool() *kafkaPool {
	once.Do(func() {
		instance = &kafkaPool{}
	})
	return instance
}

// 初始化pool
func (k *kafkaPool) Init() error {
	if k.Builder == nil {
		return gerror.New("初始化kafka失败，builder对象为空")
	}
	producer, err := initKafkaProducer(k.Builder.GetAddr(), k.Builder.GetConfig())
	if err != nil {
		return gerror.New("初始化kafka生产者失败：" + err.Error())
	}
	k.Producer = producer
	consumer, err := initKafkaConsumer(k.Builder.GetAddr(), k.Builder.GetConfig())
	if err != nil {
		return gerror.New("初始化kafka消费者失败：" + err.Error())
	}
	k.Consumer = consumer
	return nil
}

// 初始化生产者
func initKafkaProducer(addr []string, conf *sarama.Config) (sarama.SyncProducer, error) {
	producer, err := sarama.NewSyncProducer(addr, conf)
	if err != nil {
		return nil, err
	}
	return producer, nil
}

// 初始化消费者
func initKafkaConsumer(addr []string, conf *sarama.Config) (sarama.Consumer, error) {
	consumer, err := sarama.NewConsumer(addr, conf)
	if err != nil {
		return nil, err
	}
	return consumer, nil
}

func (k *kafkaPool) SetBuilder(builder IKafkaBuilder) *kafkaPool {
	k.Builder = builder
	return k
}

func (k *kafkaPool) GetProducer() sarama.SyncProducer {
	return k.Producer
}

func (k *kafkaPool) GetConsumer() sarama.Consumer {
	return k.Consumer
}

// 同步发送消息
func (k *kafkaPool) SendMsg(topic string, key string, message string) error {
	//构建发送的消息，
	msg := &sarama.ProducerMessage{
		Topic: topic, //包含了消息的主题
		//Partition: int32(10),
		Key:   sarama.StringEncoder(key),
		Value: sarama.ByteEncoder(message),
	}
	_, _, err := k.Producer.SendMessage(msg)
	if err != nil {
		fmt.Println("发送消息失败：", err.Error())
		return gerror.New("发送消息失败：" + err.Error())
	}
	return nil
}

// 消费消息的回调函数
type ConsumerFunc func(topic, key, message string, err error)

func (k *kafkaPool) ConsumerMsg(topic string, consumerFunc ConsumerFunc) error {
	var wg sync.WaitGroup
	consumer := k.Consumer
	//当前topic的所有partition
	allPartitions, err := consumer.Partitions(topic)
	if err != nil {
		return err
	}
	for partition := range allPartitions {
		//分区消费者
		pc, err := consumer.ConsumePartition(topic, int32(partition), sarama.OffsetNewest)
		if err != nil {
			pc.AsyncClose()
			//返回错误
			consumerFunc("", "", "", err)
			continue
		}
		wg.Add(1)
		go func(sarama.PartitionConsumer) {
			defer wg.Done()
			for msg := range pc.Messages() {
				consumerFunc(msg.Topic, string(msg.Key), string(msg.Value), nil)
			}
		}(pc)
	}
	fmt.Println("等待接收消息....")
	wg.Wait()
	//阻塞
	select {}

}
