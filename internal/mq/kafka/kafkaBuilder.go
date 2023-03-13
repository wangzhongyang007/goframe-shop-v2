package kafka

import "github.com/Shopify/sarama"

type IKafkaBuilder interface {
	SetAddr(addr []string) IKafkaBuilder
	GetAddr() []string
	GetConfig() *sarama.Config
}
