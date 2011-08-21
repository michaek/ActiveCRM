class AddLoginToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :login_id, :integer
  end
end