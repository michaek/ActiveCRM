# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
      user_id 1
      assigned_to 1
      completed_by 1
      name "MyString"
      taskable_id 1
      taskable_type "MyString"
      task_priority_id 1
      task_due_id 1
      task_category_id 1
      due_at "2011-08-20 17:52:04"
      completed_at "2011-08-20 17:52:04"
    end
end