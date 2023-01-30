package address

import (
	"context"
	"goframe-shop-v2/api/backend"
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
	if _, err = dao.AddressInfo.Ctx(ctx).Data(in).FieldsEx(in.Id).Where(dao.AddressInfo.Columns().Id, in.Id).Update(); err != nil {
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
	var m = dao.AddressInfo.Ctx(ctx)
	out = &model.PageAddressOutput{
		CommonPaginationRes: backend.CommonPaginationRes{
			Page: in.Page,
			Size: in.Size,
			List: []entity.AddressInfo{},
		},
	}
	listModel := m.Page(in.Page, in.Size)
	if out.Total, err = listModel.Count(); err != nil {
		return out, err
	}
	if out.Total == 0 {
		return out, nil
	}
	var list []entity.AddressInfo
	if err = listModel.ScanList(&list, "list"); err != nil {
		return out, err
	}
	if len(list) == 0 {
		return out, err
	}
	out.List = list

	return
}
