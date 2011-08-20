class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.integer :assigned_to
      t.integer :completed_by
      t.string :name
      t.integer :taskable_id
      t.string :taskable_type
      t.integer :task_priority
      t.integer :task_due
      t.integer :task_category
      t.datetime :due_at
      t.datetime :completed_at

      t.timestamps
    end
  end
end
