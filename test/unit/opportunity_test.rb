require 'test_helper'

class OpportunityTest < ActiveSupport::TestCase
  should "be valid" do
    assert Opportunity.new.valid?
  end
end
