# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :campaign do
      user_id 1
      assigned_to 1
      name "MyString"
      description "MyText"
      objectives "MyText"
      access 1
      status 1
      target_leads 1
      target_conversion 1
      budget "9.99"
      revenue ""
    end
end