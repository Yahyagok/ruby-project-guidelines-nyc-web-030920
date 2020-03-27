# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_24_021915) do

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "category"
    t.integer "capacity"
  end

  create_table "meetups", force: :cascade do |t|
    t.integer "capacity"
    t.integer "discount_percent"
    t.string "this_weeks_event"
    t.string "book"
    t.string "film"
    t.string "business"
    t.string "tech"
    t.string "art"
    t.string "photography"
    t.string "learning"
    t.integer "user_id"
    t.integer "company_id"
    t.string "single_club"
  end

  create_table "users", force: :cascade do |t|
    t.string "interest"
    t.integer "age"
    t.string "name"
  end

end
