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

ActiveRecord::Schema.define(version: 20191013164925) do

  create_table "attendees", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.boolean  "is_vip"
    t.string   "meal_request"
    t.string   "note"
    t.integer  "event_id"
    t.integer  "table_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "external_id"
    t.index ["event_id"], name: "index_attendees_on_event_id"
    t.index ["table_id"], name: "index_attendees_on_table_id"
  end

  create_table "events", force: :cascade do |t|
    t.string   "event_name"
    t.string   "event_description"
    t.string   "location"
    t.date     "date"
    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "seating_relationships", force: :cascade do |t|
    t.integer  "primary_attendee_id"
    t.integer  "secondary_attendee_id"
    t.integer  "relationship_code"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["primary_attendee_id"], name: "index_seating_relationships_on_primary_attendee_id"
    t.index ["secondary_attendee_id"], name: "index_seating_relationships_on_secondary_attendee_id"
  end

  create_table "tables", force: :cascade do |t|
    t.string   "table_name"
    t.integer  "max_seats"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_tables_on_event_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
