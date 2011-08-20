# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :activity do
      user_id 1
      actable_id 1
      actable_type "MyString"
      action "MyString"
      info "MyString"
      private false
    end
end