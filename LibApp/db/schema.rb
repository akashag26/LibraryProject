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

ActiveRecord::Schema.define(version: 20160920050910) do

  create_table "bookings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "booking_ID"
    t.string   "user"
    t.string   "email"
    t.string   "start_time"
    t.string   "end_time"
    t.string   "room_no"
    t.date     "booking_date"
    t.string   "building"
    t.string   "size"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "details", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "address"
    t.bigint   "phoneno"
    t.string   "state"
    t.string   "city"
    t.integer  "zipcode"
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "room_no"
    t.string   "building"
    t.string   "size"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "kind"
  end

end
