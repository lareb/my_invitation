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

ActiveRecord::Schema.define(:version => 20120206172729) do

  create_table "events", :force => true do |t|
    t.string   "title"
    t.string   "subtitle",     :limit => 512
    t.text     "venue"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "sub_event_id"
    t.text     "host_names"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invitations", :force => true do |t|
    t.string   "invitations_type"
    t.boolean  "is_active",        :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_invitations", :force => true do |t|
    t.integer "user_id"
    t.integer "invitation_id"
    t.integer "event_id"
    t.string  "contact_person_name"
    t.string  "contact_person_number"
    t.string  "contact_person_email"
    t.text    "contact_person_address"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "",   :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "",   :null => false
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
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "sex",                                   :default => true
    t.boolean  "active",                                :default => true
    t.date     "dob"
    t.boolean  "first_time_login"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
