# Istories SDK utility registration
require_relative '../core/utility_type'
require_relative 'clean'
require_relative 'done'
require_relative 'make_error'
require_relative 'feature_add'
require_relative 'feature_hook'
require_relative 'feature_init'
require_relative 'fetcher'
require_relative 'make_fetch_def'
require_relative 'make_context'
require_relative 'make_options'
require_relative 'make_request'
require_relative 'make_response'
require_relative 'make_result'
require_relative 'make_point'
require_relative 'make_spec'
require_relative 'make_url'
require_relative 'param'
require_relative 'prepare_auth'
require_relative 'prepare_body'
require_relative 'prepare_headers'
require_relative 'prepare_method'
require_relative 'prepare_params'
require_relative 'prepare_path'
require_relative 'prepare_query'
require_relative 'graphql'
require_relative 'result_basic'
require_relative 'result_body'
require_relative 'result_headers'
require_relative 'transform_request'
require_relative 'transform_response'

IstoriesUtility.registrar = ->(u) {
  u.clean = IstoriesUtilities::Clean
  u.done = IstoriesUtilities::Done
  u.make_error = IstoriesUtilities::MakeError
  u.feature_add = IstoriesUtilities::FeatureAdd
  u.feature_hook = IstoriesUtilities::FeatureHook
  u.feature_init = IstoriesUtilities::FeatureInit
  u.fetcher = IstoriesUtilities::Fetcher
  u.make_fetch_def = IstoriesUtilities::MakeFetchDef
  u.make_context = IstoriesUtilities::MakeContext
  u.make_options = IstoriesUtilities::MakeOptions
  u.make_request = IstoriesUtilities::MakeRequest
  u.make_response = IstoriesUtilities::MakeResponse
  u.make_result = IstoriesUtilities::MakeResult
  u.make_point = IstoriesUtilities::MakePoint
  u.make_spec = IstoriesUtilities::MakeSpec
  u.make_url = IstoriesUtilities::MakeUrl
  u.param = IstoriesUtilities::Param
  u.prepare_auth = IstoriesUtilities::PrepareAuth
  u.prepare_body = IstoriesUtilities::PrepareBody
  u.prepare_headers = IstoriesUtilities::PrepareHeaders
  u.prepare_method = IstoriesUtilities::PrepareMethod
  u.prepare_params = IstoriesUtilities::PrepareParams
  u.prepare_path = IstoriesUtilities::PreparePath
  u.prepare_query = IstoriesUtilities::PrepareQuery
  u.graphql_body = IstoriesUtilities::GraphqlBody
  u.graphql_errors = IstoriesUtilities::GraphqlErrors
  u.result_basic = IstoriesUtilities::ResultBasic
  u.result_body = IstoriesUtilities::ResultBody
  u.result_headers = IstoriesUtilities::ResultHeaders
  u.transform_request = IstoriesUtilities::TransformRequest
  u.transform_response = IstoriesUtilities::TransformResponse
}
