package voxgigistoriessdk

import (
	"github.com/voxgig-sdk/istories-sdk/go/core"
	"github.com/voxgig-sdk/istories-sdk/go/entity"
	"github.com/voxgig-sdk/istories-sdk/go/feature"
	_ "github.com/voxgig-sdk/istories-sdk/go/utility"
)

// Type aliases preserve external API.
type IstoriesSDK = core.IstoriesSDK
type Context = core.Context
type Utility = core.Utility
type Feature = core.Feature
type Entity = core.Entity
type IstoriesEntity = core.IstoriesEntity
type FetcherFunc = core.FetcherFunc
type Spec = core.Spec
type Result = core.Result
type Response = core.Response
type Operation = core.Operation
type Control = core.Control
type IstoriesError = core.IstoriesError

// BaseFeature from feature package.
type BaseFeature = feature.BaseFeature

func init() {
	core.NewBaseFeatureFunc = func() core.Feature {
		return feature.NewBaseFeature()
	}
	core.NewTestFeatureFunc = func() core.Feature {
		return feature.NewTestFeature()
	}
	core.NewNewEntityFunc = func(client *core.IstoriesSDK, entopts map[string]any) core.IstoriesEntity {
		return entity.NewNewEntity(client, entopts)
	}
}

// Constructor re-exports.
var NewIstoriesSDK = core.NewIstoriesSDK
var TestSDK = core.TestSDK
var NewContext = core.NewContext
var NewSpec = core.NewSpec
var NewResult = core.NewResult
var NewResponse = core.NewResponse
var NewOperation = core.NewOperation
var MakeConfig = core.MakeConfig

// No-arg convenience constructors. Go has no default-argument syntax,
// so these aliases let callers write `sdk.New()` / `sdk.Test()`
// instead of `sdk.NewIstoriesSDK(nil)` / `sdk.TestSDK(nil, nil)`
// for the common no-options case.
func New() *IstoriesSDK  { return NewIstoriesSDK(nil) }
func Test() *IstoriesSDK { return TestSDK(nil, nil) }
var NewBaseFeature = feature.NewBaseFeature
var NewTestFeature = feature.NewTestFeature
