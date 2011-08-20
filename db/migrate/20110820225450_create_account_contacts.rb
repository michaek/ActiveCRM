class CreateAccountContacts < ActiveRecord::Migration
  def change
    create_table :account_contacts do |t|
      t.integer :account_id
      t.integer :contact_id

      t.timestamps
    end
  end
end
