# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_02_094120) do

  create_table "permanent_parkers", charset: "utf8mb4", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "street_name", null: false
    t.string "building_number", null: false
    t.integer "zip", null: false
    t.string "city", null: false
  end

  create_table "sessions", charset: "utf8mb4", force: :cascade do |t|
    t.string "license_plate", null: false
    t.bigint "permanent_parker_id"
    t.datetime "entered_at", null: false
    t.datetime "exited_at"
    t.index ["permanent_parker_id"], name: "index_sessions_on_permanent_parker_id"
  end

  add_foreign_key "sessions", "permanent_parkers"
end
