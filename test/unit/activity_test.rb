require 'test_helper'

class ActivityTest < ActiveSupport::TestCase
  should "be valid" do
    assert Activity.new.valid?
  end
end
