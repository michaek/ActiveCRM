# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact_datum do
      contactable_id 1
      contactable_type "MyString"
      do_not_call 1
      preferred_contact 1
      phone "MyString"
      fax "MyString"
      email "MyString"
      website "MyString"
      blog "MyString"
      linked_in "MyString"
      facebook "MyString"
      twitter "MyString"
      skype "MyString"
    end
end