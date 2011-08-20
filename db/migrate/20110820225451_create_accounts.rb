class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :user_id
      t.integer :assigned_to
      t.string :name
      t.text :description
      t.integer :access

      t.timestamps
    end
  end
end
