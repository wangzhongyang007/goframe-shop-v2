package address

import (
	"context"
	"goframe-shop-v2/internal/consts"
	"goframe-shop-v2/internal/dao"
	"goframe-shop-v2/internal/model"
	"goframe-shop-v2/internal/model/entity"
	"goframe-shop-v2/internal/service"
)

type sAddress struct{}

func init() {
	service.RegisterAddress(&sAddress{})
}

func (*sAddress) Add(ctx context.Context, in model.AddAddressInput) (out *model.AddAddressOutput, err error) {
	id, err := dao.AddressInfo.Ctx(ctx).Data(in).InsertAndGetId()
	if err != nil {
		return nil, err
	}
	return &model.AddAddressOutput{Id: int(id)}, err
}

func (*sAddress) Update(ctx context.Context, in model.UpdateAddressInput) (err error) {
	if _, err = dao.AddressInfo.Ctx(ctx).
		Data(in).
		OmitEmpty().
		Where(dao.AddressInfo.Columns().Id, in.Id).
		Update(); err != nil {
		return err
	}
	return nil
}

func (*sAddress) Delete(ctx context.Context, id int) (err error) {
	_, err = dao.AddressInfo.Ctx(ctx).Where(dao.AddressInfo.Columns().Id, id).Delete()
	if err != nil {
		return err
	}
	return nil
}

func (*sAddress) Page(ctx context.Context, in model.PageAddressInput) (out *model.PageAddressOutput, err error) {
	//1.获得*gdb.Model对象，方面后续调用
	m := dao.AddressInfo.Ctx(ctx)
	//2. 实例化响应结构体
	out = &model.PageAddressOutput{}
	out.Page, out.Size = in.Page, in.Size
	//3. 分页查询
	listModel := m.Page(in.Page, in.Size)
	//4. 再查询count，判断有无数据
	out.Total, err = m.Count()
	if err != nil || out.Total == 0 {
		return out, err
	}
	//5. 延迟初始化list切片 确定有数据，再按期望大小初始化切片容量
	out.List = make([]entity.AddressInfo, 0, in.Size)
	//6. 把查询到的结果赋值到响应结构体中
	var list []entity.AddressInfo
	if err := listModel.Scan(&list); err != nil {
		return out, err
	}
	out.List = list
	return
}

// 客户端获取省市县区地址
func (*sAddress) GetCityList(ctx context.Context) (out *model.CityAddressListOutput, err error) {
	out = &model.CityAddressListOutput{}
	err = dao.AddressInfo.Ctx(ctx).Where(dao.AddressInfo.Columns().Pid, consts.ProvincePid).WithAll().Scan(&out.List)
	if err != nil {
		return out, err
	}
	return
}
