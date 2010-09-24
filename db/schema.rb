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

ActiveRecord::Schema.define(:version => 20100923210922) do

  create_table "clients", :force => true do |t|
    t.string   "name",       :limit => 64,  :default => ""
    t.string   "homepage",   :limit => 256, :default => ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contact_points", :force => true do |t|
    t.integer  "project_id"
    t.integer  "collaborator_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notes", :force => true do |t|
    t.integer  "noted_id"
    t.string   "noted_type",      :limit => 32
    t.text     "content",                       :default => "",      :null => false
    t.string   "content_type",    :limit => 32, :default => "plain"
    t.integer  "collaborator_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.string   "first_name", :limit => 32,  :default => ""
    t.string   "last_name",  :limit => 32,  :default => ""
    t.string   "email",      :limit => 256, :default => ""
    t.string   "phone",      :limit => 32,  :default => ""
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "type"
  end

  create_table "personal_relations", :force => true do |t|
    t.integer  "person_id"
    t.integer  "related_person_id"
    t.integer  "relation_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_assignments", :force => true do |t|
    t.integer  "project_id"
    t.integer  "collaborator_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", :force => true do |t|
    t.string   "title",      :limit => 64, :default => ""
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relation_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login_name",          :limit => 32,                  :null => false
    t.string   "first_name",          :limit => 32,  :default => ""
    t.string   "last_name",           :limit => 32,  :default => ""
    t.string   "email",                              :default => "", :null => false
    t.string   "encrypted_password",  :limit => 128, :default => "", :null => false
    t.string   "password_salt",                      :default => "", :null => false
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["login_name"], :name => "index_users_on_login_name", :unique => true

end
