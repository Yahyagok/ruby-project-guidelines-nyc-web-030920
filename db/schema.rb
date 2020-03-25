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

ActiveRecord::Schema.define(version: 20200324021915) do

  create_table "companies", force: :cascade do |t|
    t.string  "name"
    t.string  "location"
    t.string  "category"
    t.integer "capacity"
  end

  create_table "meetups", force: :cascade do |t|
    t.integer "capacity"
    t.integer "discount_percent"
    t.string  "this_weeks_event"
    t.string  "book"
    t.string  "film"
    t.string  "business"
    t.string  "tech"
    t.string  "art"
    t.string  "photography"
    t.string  "learning"
    t.integer "user_id"
    t.integer "company_id"
    t.string  "single_club"
  end

  create_table "users", force: :cascade do |t|
    t.string  "interest"
    t.integer "age"
    t.string  "name"
  end

end
