require 'test_helper'

class ContactDatumTest < ActiveSupport::TestCase
  should "be valid" do
    assert ContactDatum.new.valid?
  end
end
