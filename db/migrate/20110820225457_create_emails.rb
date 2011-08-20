class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.integer :user_id
      t.integer :emailable_id
      t.string :emailable_type
      t.string :imap_message_id
      t.string :sent_from
      t.string :sent_to
      t.string :cc
      t.string :subject
      t.string :body
      t.datetime :sent_at
      t.datetime :received_at

      t.timestamps
    end
  end
end
