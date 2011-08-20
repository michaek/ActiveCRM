# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :account do
      user_id 1
      assigned_to 1
      name "MyString"
      description "MyText"
      access 1
    end
end