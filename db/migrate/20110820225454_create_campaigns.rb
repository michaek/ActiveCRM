class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.integer :user_id
      t.integer :assigned_to
      t.string :name
      t.text :description
      t.text :objectives
      t.integer :access
      t.integer :status
      t.integer :target_leads
      t.integer :target_conversion
      t.decimal :budget
      t.decimal :revenue

      t.timestamps
    end
  end
end
