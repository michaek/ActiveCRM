# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :email do
      imap_message_id 1
      user_id 1
      emailable_id 1
      emailable_type "MyString"
      sent_from "MyString"
      sent_to "MyString"
      cc "MyString"
      subject "MyString"
      body "MyString"
      sent_at "2011-08-20 17:51:26"
      received_at "2011-08-20 17:51:26"
    end
end