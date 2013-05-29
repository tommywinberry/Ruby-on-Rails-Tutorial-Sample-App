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

ActiveRecord::Schema.define(:version => 20130527014929) do

  create_table "account_transfers", :force => true do |t|
    t.integer  "from_account_id"
    t.integer  "to_account_id"
    t.decimal  "amount"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "accounts", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "bios", :force => true do |t|
    t.string   "hometown"
    t.string   "favorite_verse"
    t.string   "major"
    t.string   "favorite_breakfast"
    t.string   "favorite_superhero"
    t.string   "grow_up"
    t.string   "catchphrase"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "charge_types", :force => true do |t|
    t.string   "category"
    t.decimal  "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "office_id"
  end

  create_table "charges", :force => true do |t|
    t.integer  "office_id"
    t.integer  "user_id"
    t.integer  "charge_type_id"
    t.decimal  "override_value"
    t.boolean  "reconciled"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "microposts", ["user_id", "created_at"], :name => "index_microposts_on_user_id_and_created_at"

  create_table "officer_bios", :force => true do |t|
    t.string   "hometown"
    t.string   "favorite_verse"
    t.string   "major"
    t.string   "favorite_breakfast"
    t.string   "favorite_superhero"
    t.string   "grow_up"
    t.string   "catchphrase"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "offices", :force => true do |t|
    t.decimal  "budget"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "title"
    t.integer  "officer_id"
    t.string   "email"
    t.text     "duties"
  end

  create_table "payment_types", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
  end

  create_table "payments", :force => true do |t|
    t.integer  "paid_by_user_id"
    t.integer  "collected_by_user_id"
    t.decimal  "amount_paid"
    t.string   "notes"
    t.boolean  "reconciled"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.integer  "charge_id"
  end

  create_table "purchases", :force => true do |t|
    t.integer  "user_id"
    t.decimal  "purchase_amount"
    t.integer  "office_id"
    t.string   "note"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "purchase_location"
  end

  create_table "reconciliations", :force => true do |t|
    t.float    "balance"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "transfers", :force => true do |t|
    t.integer  "officer_user_id"
    t.integer  "account_id"
    t.decimal  "value"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
    t.string   "nickname"
    t.text     "story"
    t.string   "phone"
    t.boolean  "email_public"
    t.boolean  "phone_public"
    t.text     "testimonial"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
