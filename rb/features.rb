# Istories SDK feature factory

require_relative 'feature/base_feature'
require_relative 'feature/test_feature'


module IstoriesFeatures
  def self.make_feature(name)
    case name
    when "base"
      IstoriesBaseFeature.new
    when "test"
      IstoriesTestFeature.new
    else
      IstoriesBaseFeature.new
    end
  end
end
