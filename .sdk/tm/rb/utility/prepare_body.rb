# Istories SDK utility: prepare_body
require_relative 'media'
module IstoriesUtilities
  PrepareBody = ->(ctx) {
    return nil unless ctx.op.input == "data"
    return IstoriesUtilities.raw_body(ctx.reqdata) if IstoriesUtilities.raw_request?(ctx.point)
    ctx.utility.transform_request.call(ctx)
  }
end
