class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.integer :user_id
      t.integer :contact_id
      t.decimal :amount
      t.text :breakdown
      t.integer :source
      t.integer :gift
      t.date :pledged_on
      t.date :received_on
      t.date :cleared_on

      t.timestamps
    end
  end
end
