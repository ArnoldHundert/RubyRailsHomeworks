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

ActiveRecord::Schema.define(version: 20170426013002) do

  create_table "buyers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "address"
    t.integer  "phone_number"
    t.integer  "paypal_account_number"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "category"
    t.text     "description"
    t.float    "price"
    t.float    "shipping_price"
    t.integer  "listing_duration"
    t.string   "shipping_destinations_allowed"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "sellers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "address"
    t.integer  "paypal_account_number"
    t.string   "payment_methods_accepted"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "phone_number"
  end

end
