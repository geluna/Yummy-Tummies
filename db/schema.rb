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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150430130110) do

  create_table "accounts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "order_id"
    t.string   "email"
    t.float    "credit"
    t.float    "debit"
    t.float    "acctbal"
    t.string   "depotype"
  end

  add_index "accounts", ["order_id"], name: "index_accounts_on_order_id"
  add_index "accounts", ["user_id"], name: "index_accounts_on_user_id"

  create_table "carts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "franchises", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "franchise_approve", default: false
  end

  add_index "franchises", ["user_id"], name: "index_franchises_on_user_id"

  create_table "line_items", force: true do |t|
    t.integer  "menu_id"
    t.integer  "cart_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order_id"
    t.date     "datefor"
  end

  add_index "line_items", ["cart_id"], name: "index_line_items_on_cart_id"
  add_index "line_items", ["menu_id"], name: "index_line_items_on_menu_id"
  add_index "line_items", ["order_id"], name: "index_line_items_on_order_id"
  add_index "line_items", ["student_id"], name: "index_line_items_on_student_id"

  create_table "menus", force: true do |t|
    t.integer  "menuID"
    t.string   "foodItem"
    t.text     "description"
    t.string   "image_url"
    t.decimal  "price",        precision: 8, scale: 2
    t.integer  "franchise_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ingredients"
  end

  add_index "menus", ["franchise_id"], name: "index_menus_on_franchise_id"

  create_table "orders", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "email"
    t.date     "datefor"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "account_id"
    t.float    "total"
  end

  add_index "orders", ["account_id"], name: "index_orders_on_account_id"

  create_table "schools", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "franchise_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "school_approve", default: false
  end

  add_index "schools", ["franchise_id"], name: "index_schools_on_franchise_id"

  create_table "students", force: true do |t|
    t.string   "fname"
    t.string   "lname"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "school_id"
    t.integer  "user_id"
  end

  add_index "students", ["school_id"], name: "index_students_on_school_id"
  add_index "students", ["user_id"], name: "index_students_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "account_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
    t.integer  "category"
    t.string   "fname"
    t.string   "lname"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
  end

  add_index "users", ["account_id"], name: "index_users_on_account_id"
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
