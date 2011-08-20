class CreateContactData < ActiveRecord::Migration
  def change
    create_table :contact_data do |t|
      t.integer :contactable_id
      t.string :contactable_type
      t.integer :do_not_call
      t.integer :preferred_contact
      t.string :phone
      t.string :fax
      t.string :email
      t.string :website
      t.string :blog
      t.string :linked_in
      t.string :facebook
      t.string :twitter
      t.string :skype

      t.timestamps
    end
  end
end
