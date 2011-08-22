# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110822025600) do

  create_table "account_contacts", :force => true do |t|
    t.integer  "account_id"
    t.integer  "contact_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.integer  "deleted_by"
  end

  create_table "accounts", :force => true do |t|
    t.integer  "assigned_to_id"
    t.string   "name"
    t.text     "description"
    t.integer  "access"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.integer  "deleted_by"
  end

  create_table "active_admin_comments", :force => true do |t|
    t.integer  "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "activities", :force => true do |t|
    t.integer  "actable_id"
    t.string   "actable_type"
    t.string   "action"
    t.string   "info"
    t.boolean  "private"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.integer  "deleted_by"
  end

  create_table "addresses", :force => true do |t|
    t.string   "street_1"
    t.string   "street_2"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "country"
    t.string   "full_address"
    t.integer  "address_type"
    t.integer  "addressable_id"
    t.string   "addressable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.integer  "deleted_by"
  end

  create_table "campaigns", :force => true do |t|
    t.integer  "assigned_to_id"
    t.string   "name"
    t.text     "description"
    t.text     "objectives"
    t.integer  "access"
    t.integer  "status"
    t.integer  "target_leads"
    t.integer  "target_conversion"
    t.decimal  "budget"
    t.decimal  "revenue"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.integer  "deleted_by"
  end

  create_table "comments", :force => true do |t|
    t.string   "title",            :limit => 50, :default => ""
    t.text     "comment"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.integer  "user_id"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["commentable_id"], :name => "index_comments_on_commentable_id"
  add_index "comments", ["commentable_type"], :name => "index_comments_on_commentable_type"
  add_index "comments", ["user_id"], :name => "index_comments_on_user_id"

  create_table "contact_data", :force => true do |t|
    t.integer  "contactable_id"
    t.string   "contactable_type"
    t.integer  "do_not_call"
    t.integer  "preferred_contact"
    t.string   "phone"
    t.string   "fax"
    t.string   "email"
    t.string   "website"
    t.string   "blog"
    t.string   "linked_in"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "skype"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.integer  "deleted_by"
  end

  create_table "contacts", :force => true do |t|
    t.integer  "lead_id"
    t.integer  "assigned_to_id"
    t.integer  "reports_to_id"
    t.string   "first_name"
    t.string   "last_name"
    t.text     "description"
    t.integer  "access"
    t.string   "title"
    t.string   "department"
    t.integer  "source"
    t.date     "born_on"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "login_id"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.integer  "deleted_by"
  end

  create_table "contributions", :force => true do |t|
    t.integer  "contact_id"
    t.decimal  "amount"
    t.text     "breakdown"
    t.integer  "source"
    t.integer  "gift"
    t.date     "pledged_on"
    t.date     "received_on"
    t.date     "cleared_on"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.integer  "deleted_by"
  end

  create_table "emails", :force => true do |t|
    t.integer  "emailable_id"
    t.string   "emailable_type"
    t.string   "imap_message_id"
    t.string   "sent_from"
    t.string   "sent_to"
    t.string   "cc"
    t.string   "subject"
    t.string   "body"
    t.datetime "sent_at"
    t.datetime "received_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.integer  "deleted_by"
  end

  create_table "leads", :force => true do |t|
    t.integer  "campaign_id"
    t.integer  "assigned_to_id"
    t.string   "first_name"
    t.string   "last_name"
    t.text     "description"
    t.integer  "access"
    t.string   "title"
    t.string   "department"
    t.integer  "status"
    t.integer  "source"
    t.string   "referred_by"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.integer  "deleted_by"
  end

  create_table "opportunities", :force => true do |t|
    t.integer  "campaign_id"
    t.integer  "account_id"
    t.integer  "contact_id"
    t.integer  "assigned_to_id"
    t.string   "name"
    t.text     "description"
    t.integer  "access"
    t.integer  "source"
    t.integer  "stage"
    t.integer  "probability"
    t.decimal  "amount"
    t.decimal  "discount"
    t.date     "closes_on"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.integer  "deleted_by"
  end

  create_table "tasks", :force => true do |t|
    t.integer  "assigned_to_id"
    t.integer  "completed_by_id"
    t.string   "name"
    t.integer  "taskable_id"
    t.string   "taskable_type"
    t.integer  "task_priority"
    t.integer  "task_due"
    t.integer  "task_category"
    t.datetime "due_at"
    t.datetime "completed_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.integer  "deleted_by"
    t.integer  "access"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
