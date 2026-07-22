# Istories SDK exists test

require "minitest/autorun"
require_relative "../Istories_sdk"

class ExistsTest < Minitest::Test
  def test_create_test_sdk
    testsdk = IstoriesSDK.test(nil, nil)
    assert !testsdk.nil?
  end
end
