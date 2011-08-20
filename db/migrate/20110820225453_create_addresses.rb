class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street_1
      t.string :street_2
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :country
      t.string :full_address
      t.integer :address_type
      t.integer :addressable_id
      t.string :addressable_type

      t.timestamps
    end
  end
end
