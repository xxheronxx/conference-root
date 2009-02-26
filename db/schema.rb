# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090226033749) do

  create_table "admins", :force => true do |t|
    t.string   "name"
    t.string   "salt"
    t.string   "encrypted_password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "full_name"
    t.string   "ward"
    t.string   "calling"
    t.string   "level"
  end

  create_table "brings", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", :force => true do |t|
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedules", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.integer  "admin_id"
    t.string   "ip_address"
    t.string   "path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "fname"
    t.string   "mname"
    t.string   "lname"
    t.string   "class_or_quorum"
    t.string   "phone"
    t.string   "address"
    t.string   "city"
    t.string   "zip"
    t.string   "email"
    t.string   "choice1"
    t.string   "choice2"
    t.date     "birthday"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ward"
    t.string   "youth_adult"
    t.string   "choice3"
    t.string   "adult_type"
    t.string   "tshirt_agreement"
    t.string   "tshirt_size"
    t.string   "choice1_ward"
    t.string   "choice2_ward"
    t.string   "choice3_ward"
  end

  create_table "wears", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
