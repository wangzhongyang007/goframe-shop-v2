package model

type AddCollectionInput struct {
	UserId   uint
	ObjectId uint
	Type     uint8
}

type AddCollectionOutput struct {
	Id uint
}

type DeleteCollectionInput struct {
	Id       uint
	UserId   uint
	ObjectId uint
	Type     uint8
}

type DeleteCollectionOutput struct {
	Id uint
}
