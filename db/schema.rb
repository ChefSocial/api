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

ActiveRecord::Schema.define(version: 20151230185139) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.integer  "addressable_id"
    t.string   "addressable_type"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "country"
    t.string   "pincode"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "chef_id"
    t.datetime "date"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "cost_to_chef"
    t.integer  "cost_to_customer"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "chefs", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meals", force: :cascade do |t|
    t.string   "type"
    t.string   "name"
    t.integer  "menu_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menus", force: :cascade do |t|
    t.integer  "chef_id"
    t.string   "cuisine"
    t.string   "name"
    t.integer  "min_capacity"
    t.integer  "max_capacity"
    t.integer  "time_to_prepare"
    t.string   "description"
    t.integer  "booking_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "prices", force: :cascade do |t|
    t.integer  "menu_id"
    t.integer  "chef_low"
    t.integer  "chef_mid"
    t.integer  "chef_high"
    t.integer  "customer_low"
    t.integer  "customer_mid"
    t.integer  "customer_high"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
