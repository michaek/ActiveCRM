# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact do
      user_id 1
      lead_id 1
      assigned_to 1
      reports_to 1
      first_name "MyString"
      last_name "MyString"
      description "MyText"
      access 1
      title "MyString"
      department "MyString"
      source 1
      born_on "2011-08-20"
    end
end