# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :opportunity do
      user_id 1
      campaign_id 1
      account_id 1
      contact_id 1
      assigned_to 1
      name "MyString"
      description "MyText"
      access 1
      source 1
      stage 1
      probability 1
      amount "9.99"
      discount "9.99"
      closes_on "2011-08-20"
    end
end