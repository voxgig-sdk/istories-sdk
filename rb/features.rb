# Istories SDK feature factory

require_relative 'feature/base_feature'
require_relative 'feature/ratelimit_feature'
require_relative 'feature/retry_feature'
require_relative 'feature/test_feature'
require_relative 'feature/timeout_feature'


module IstoriesFeatures
  def self.make_feature(name)
    case name
    when "base"
      IstoriesBaseFeature.new
    when "ratelimit"
      IstoriesRatelimitFeature.new
    when "retry"
      IstoriesRetryFeature.new
    when "test"
      IstoriesTestFeature.new
    when "timeout"
      IstoriesTimeoutFeature.new
    else
      IstoriesBaseFeature.new
    end
  end
end
