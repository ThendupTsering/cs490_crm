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

ActiveRecord::Schema.define(version: 20160705044151) do

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "entity_type"
    t.string   "email"
    t.string   "phone_no"
    t.string   "fax_no"
    t.string   "gender"
    t.string   "career"
    t.date     "birthday"
    t.string   "entry_point"
    t.date     "entry_date"
    t.integer  "size"
    t.string   "contact_name"
    t.string   "industry"
    t.integer  "score"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "returns", force: :cascade do |t|
    t.text     "reason"
    t.date     "return_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "client_id"
    t.integer  "product_id"
  end

  add_index "returns", ["client_id"], name: "index_returns_on_client_id"
  add_index "returns", ["product_id"], name: "index_returns_on_product_id"

  create_table "salespeople", force: :cascade do |t|
    t.string   "name"
    t.string   "team"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.date     "date_created"
    t.text     "feedback"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "client_id"
    t.integer  "salesperson_id"
  end

  add_index "tickets", ["client_id"], name: "index_tickets_on_client_id"
  add_index "tickets", ["salesperson_id"], name: "index_tickets_on_salesperson_id"

  create_table "transactions", force: :cascade do |t|
    t.string   "status"
    t.integer  "total"
    t.integer  "count"
    t.date     "open_date"
    t.date     "close_date"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "product_id"
    t.integer  "client_id"
    t.integer  "salesperson_id"
  end

  add_index "transactions", ["client_id"], name: "index_transactions_on_client_id"
  add_index "transactions", ["product_id"], name: "index_transactions_on_product_id"
  add_index "transactions", ["salesperson_id"], name: "index_transactions_on_salesperson_id"

end
