# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address do
      street_1 "MyString"
      street_2 "MyString"
      city "MyString"
      state "MyString"
      zipcode "MyString"
      country "MyString"
      full_address "MyString"
      address_type "MyString"
      addressable_id 1
      addressable_type "MyString"
    end
end