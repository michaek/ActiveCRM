class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.integer :user_id
      t.integer :campaign_id
      t.integer :assigned_to
      t.string :first_name
      t.string :last_name
      t.text :description
      t.integer :access
      t.string :title
      t.string :department
      t.integer :status
      t.integer :source
      t.string :referred_by
      t.integer :rating

      t.timestamps
    end
  end
end
