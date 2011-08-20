class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :user_id
      t.integer :actable_id
      t.string :actable_type
      t.string :action
      t.string :info
      t.boolean :private

      t.timestamps
    end
  end
end
