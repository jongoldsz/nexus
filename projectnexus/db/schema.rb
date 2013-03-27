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

ActiveRecord::Schema.define(:version => 20130327202235) do

  create_table "blogentries", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.boolean  "highlighted"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "project_id"
    t.integer  "user_id"
  end

  create_table "comments", :force => true do |t|
    t.text     "message"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "user_id"
    t.integer  "project_id"
    t.integer  "objective_id"
    t.integer  "task_id"
    t.integer  "discussion_id"
    t.integer  "resource_id"
  end

  create_table "discussions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "project_id"
  end

  create_table "documents", :force => true do |t|
    t.string   "name"
    t.string   "type"
    t.integer  "downloads"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "memberships", :force => true do |t|
    t.integer  "level"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "objectives", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.integer  "status"
    t.text     "pitch"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "user_id"
    t.string   "miniimage"
    t.integer  "stage_id"
  end

  add_index "projects", ["user_id"], :name => "index_projects_on_user_id"

  create_table "resources", :force => true do |t|
    t.integer  "quantity"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "stages", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "project_id"
  end

  create_table "tasks", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "duedate"
    t.boolean  "status"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first"
    t.string   "middle"
    t.string   "last"
    t.string   "honorific"
    t.string   "suffix"
    t.string   "preferredname"
    t.string   "email"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
