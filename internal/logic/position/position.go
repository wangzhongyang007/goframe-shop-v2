package rotation

import (
	"context"
	"github.com/gogf/gf/v2/database/gdb"
	"github.com/gogf/gf/v2/encoding/ghtml"
	"github.com/gogf/gf/v2/frame/g"
	"goframe-shop-v2/internal/dao"
	"goframe-shop-v2/internal/model"
	"goframe-shop-v2/internal/model/entity"
	"goframe-shop-v2/internal/service"
)

type sPosition struct{}

func init() {
	service.RegisterPosition(New())
}

func New() *sPosition {
	return &sPosition{}
}

func (s *sPosition) Create(ctx context.Context, in model.PositionCreateInput) (out model.PositionCreateOutput, err error) {
	// 不允许HTML代码
	if err = ghtml.SpecialCharsMapOrStruct(in); err != nil {
		return out, err
	}
	lastInsertID, err := dao.PositionInfo.Ctx(ctx).Data(in).InsertAndGetId()
	if err != nil {
		return out, err
	}
	return model.PositionCreateOutput{PositionId: int(lastInsertID)}, err
}

// Delete 删除
func (s *sPosition) Delete(ctx context.Context, id uint) error {
	return dao.PositionInfo.Transaction(ctx, func(ctx context.Context, tx *gdb.TX) error {
		// 删除内容
		_, err := dao.PositionInfo.Ctx(ctx).Where(g.Map{
			dao.PositionInfo.Columns().Id: id,
		}).Delete()
		return err
	})
}

// Update 修改
func (s *sPosition) Update(ctx context.Context, in model.PositionUpdateInput) error {
	return dao.PositionInfo.Transaction(ctx, func(ctx context.Context, tx *gdb.TX) error {
		// 不允许HTML代码
		if err := ghtml.SpecialCharsMapOrStruct(in); err != nil {
			return err
		}
		_, err := dao.PositionInfo.
			Ctx(ctx).
			Data(in).
			FieldsEx(dao.PositionInfo.Columns().Id).
			Where(dao.PositionInfo.Columns().Id, in.Id).
			Update()
		return err
	})
}

// GetList 查询内容列表
func (s *sPosition) GetList(ctx context.Context, in model.PositionGetListInput) (out *model.PositionGetListOutput, err error) {
	var (
		m = dao.PositionInfo.Ctx(ctx)
	)
	out = &model.PositionGetListOutput{
		Page: in.Page,
		Size: in.Size,
	}
	// 默认查询topic
	//if in.Type != "" {
	//	m = m.Where(dao.Position.Columns().Type, in.Type)
	//} else {
	//	m = m.Where(dao.Position.Columns().Type, consts.PositionTypeTopic)
	//}
	// 栏目检索
	//if in.CategoryId > 0 {
	//	//返回数据的示例
	//	idArray, err := service.Category().GetSubIdList(ctx, in.CategoryId)
	//	if err != nil {
	//		return out, err
	//	}
	//	//where in 查询
	//	m = m.Where(dao.Position.Columns().CategoryId, idArray)
	//}
	// 管理员可以查看所有文章
	//if in.UserId > 0 && !service.User().IsAdmin(ctx, in.UserId) {
	//	m = m.Where(dao.Position.Columns().UserId, in.UserId)
	//}
	// 分配查询
	listModel := m.Page(in.Page, in.Size)
	// 排序方式
	listModel = listModel.OrderDesc(dao.PositionInfo.Columns().Sort)
	//switch in.Sort {
	//case consts.PositionSortHot:
	//	listModel = listModel.OrderDesc(dao.Position.Columns().ViewCount)
	//
	//case consts.PositionSortActive:
	//	listModel = listModel.OrderDesc(dao.Position.Columns().UpdatedAt)
	//
	//default:
	//	listModel = listModel.OrderDesc(dao.Position.Columns().Id)
	//}
	// 执行查询
	var list []*entity.PositionInfo
	if err := listModel.Scan(&list); err != nil {
		return out, err
	}
	// 没有数据
	if len(list) == 0 {
		return out, nil
	}
	out.Total, err = m.Count()
	if err != nil {
		return out, err
	}
	// Position
	//指定item的键名用：ScanList
	//if err := listModel.ScanList(&out.List, "Position"); err != nil {
	//不指定item的键名用：Scan
	if err := listModel.Scan(&out.List); err != nil {
		return out, err
	}
	//// Category
	//err = dao.Category.Ctx(ctx).
	//	Fields(model.PositionListCategoryItem{}).
	//	Where(dao.Category.Columns().Id, gutil.ListItemValuesUnique(out.List, "Position", "CategoryId")).
	//	ScanList(&out.List, "Category", "Position", "id:CategoryId")
	//if err != nil {
	//	return out, err
	//}
	//// User
	//err = dao.User.Ctx(ctx).
	//	Fields(model.PositionListUserItem{}).
	//	Where(dao.User.Columns().Id, gutil.ListItemValuesUnique(out.List, "Position", "UserId")).
	//	ScanList(&out.List, "User", "Position", "id:UserId")
	//if err != nil {
	//	return out, err
	//}
	return
}
