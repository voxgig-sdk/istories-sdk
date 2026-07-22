# Istories SDK utility: make_context
require_relative '../core/context'
module IstoriesUtilities
  MakeContext = ->(ctxmap, basectx) {
    IstoriesContext.new(ctxmap, basectx)
  }
end
