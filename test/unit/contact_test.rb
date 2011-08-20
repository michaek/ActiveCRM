require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  should "be valid" do
    assert Contact.new.valid?
  end
end
