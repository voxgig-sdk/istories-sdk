package core

type IstoriesError struct {
	IsIstoriesError bool
	Sdk              string
	Code             string
	Msg              string
	Ctx              *Context
	Result           any
	Spec             any
}

func NewIstoriesError(code string, msg string, ctx *Context) *IstoriesError {
	return &IstoriesError{
		IsIstoriesError: true,
		Sdk:              "Istories",
		Code:             code,
		Msg:              msg,
		Ctx:              ctx,
	}
}

func (e *IstoriesError) Error() string {
	return e.Msg
}
