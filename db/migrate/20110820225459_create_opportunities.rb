class CreateOpportunities < ActiveRecord::Migration
  def change
    create_table :opportunities do |t|
      t.integer :user_id
      t.integer :campaign_id
      t.integer :account_id
      t.integer :contact_id
      t.integer :assigned_to
      t.string :name
      t.text :description
      t.integer :access
      t.integer :source
      t.integer :stage
      t.integer :probability
      t.decimal :amount
      t.decimal :discount
      t.date :closes_on

      t.timestamps
    end
  end
end
