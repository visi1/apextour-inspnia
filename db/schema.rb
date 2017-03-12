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

ActiveRecord::Schema.define(version: 20170312185320) do

  create_table "hotels", force: :cascade do |t|
    t.integer  "region_id"
    t.integer  "town_id"
    t.string   "name"
    t.string   "transcription"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "images"
  end

  create_table "hotels_services", force: :cascade do |t|
    t.integer "hotel_id"
    t.integer "service_id"
    t.index ["hotel_id"], name: "index_hotels_services_on_hotel_id"
    t.index ["service_id"], name: "index_hotels_services_on_service_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.string   "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "towns", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
