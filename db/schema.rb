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

ActiveRecord::Schema.define(version: 2019_04_01_221648) do

  create_table "airlines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_url"
  end

  create_table "airlines_passengers", force: :cascade do |t|
    t.integer "airline_id"
    t.integer "passenger_id"
  end

  create_table "crews", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.integer "airline_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "crews_flights", force: :cascade do |t|
    t.integer "crew_id"
    t.integer "flight_id"
  end

  create_table "flights", force: :cascade do |t|
    t.string "name"
    t.datetime "date"
    t.string "destination"
    t.integer "airline_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flights_passengers", force: :cascade do |t|
    t.integer "flight_id"
    t.integer "passenger_id"
  end

  create_table "passengers", force: :cascade do |t|
    t.string "name"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
