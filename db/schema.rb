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

ActiveRecord::Schema.define(version: 2019_05_08_084958) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "meetups", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|

    t.string "person_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people_schedules", force: :cascade do |t|
    t.bigint "person_id"
    t.bigint "schedule_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_people_schedules_on_person_id"
    t.index ["schedule_id"], name: "index_people_schedules_on_schedule_id"

  end

  create_table "schedules", force: :cascade do |t|
    t.string "date"
    t.bigint "meetup_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meetup_id"], name: "index_schedules_on_meetup_id"
  end

end
