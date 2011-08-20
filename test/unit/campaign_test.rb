require 'test_helper'

class CampaignTest < ActiveSupport::TestCase
  should "be valid" do
    assert Campaign.new.valid?
  end
end
