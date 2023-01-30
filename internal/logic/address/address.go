package address

import (
	"context"
	"goframe-shop-v2/internal/consts"
	"goframe-shop-v2/internal/dao"
	"goframe-shop-v2/internal/model"
	"goframe-shop-v2/internal/service"
)

type sAddress struct{}

func init() {
	service.RegisterAddress(New())
}

func New() *sAddress {
	return &sAddress{}
}
func (*sAddress) GetList(ctx context.Context) (out *model.CityAddressListOutput, err error) {
	out = &model.CityAddressListOutput{}
	err = dao.AddressInfo.Ctx(ctx).Where(dao.AddressInfo.Columns().Pid, consts.ProvincePid).WithAll().Scan(&out.List)
	if err != nil {
		return out, err
	}
	return
}
