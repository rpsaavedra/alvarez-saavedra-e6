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

ActiveRecord::Schema.define(version: 20160517182444) do

  create_table "articles", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price"
    t.string   "image"
    t.string   "kind"
    t.text     "description"
    t.decimal  "sale"
    t.integer  "stock"
    t.string   "url"
    t.string   "string_otro"
    t.integer  "int_otro"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "offers", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price"
    t.integer  "product_1_id"
    t.integer  "product_2_id"
    t.integer  "product_3_id"
    t.integer  "product_4_id"
    t.integer  "lot_1"
    t.integer  "lot_2"
    t.integer  "lot_3"
    t.integer  "lot_4"
    t.string   "image"
    t.date     "date_start"
    t.date     "date_end"
    t.integer  "validation"
    t.string   "string_otro"
    t.integer  "int_otro"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price"
    t.string   "image"
    t.string   "type"
    t.text     "description"
    t.decimal  "sale"
    t.integer  "stock"
    t.string   "string_otro"
    t.integer  "int_otro"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "proms", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price"
    t.string   "image"
    t.text     "description"
    t.integer  "stock"
    t.integer  "prod_1"
    t.integer  "prod_2"
    t.integer  "prod_3"
    t.integer  "prod_4"
    t.integer  "cant_1"
    t.integer  "cant_2"
    t.integer  "cant_3"
    t.integer  "cant_4"
    t.date     "date_start"
    t.date     "date_end"
    t.integer  "valido"
    t.string   "url"
    t.string   "string_otro"
    t.integer  "int_otro"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.integer  "admin"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "password_digest"
    t.boolean  "activated",       default: true
    t.string   "reset_digest"
    t.string   "question"
    t.string   "answer"
  end

end
