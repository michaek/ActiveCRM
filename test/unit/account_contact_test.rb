require 'test_helper'

class AccountContactTest < ActiveSupport::TestCase
  should "be valid" do
    assert AccountContact.new.valid?
  end
end
