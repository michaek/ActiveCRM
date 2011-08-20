class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :user_id
      t.integer :lead_id
      t.integer :assigned_to
      t.integer :reports_to
      t.string :first_name
      t.string :last_name
      t.text :description
      t.integer :access
      t.string :title
      t.string :department
      t.integer :source
      t.date :born_on

      t.timestamps
    end
  end
end
