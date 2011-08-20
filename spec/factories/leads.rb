# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :lead do
      user_id 1
      campaign_id 1
      assigned_to 1
      first_name "MyString"
      last_name "MyString"
      description "MyText"
      access 1
      title "MyString"
      department "MyString"
      status 1
      source 1
      referred_by "MyString"
      rating 1
    end
end