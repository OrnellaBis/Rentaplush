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

ActiveRecord::Schema.define(version: 2021_08_16_132449) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "plush_id", null: false
    t.date "start_date"
    t.date "end_date"
    t.float "total_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["plush_id"], name: "index_bookings_on_plush_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "plushes", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.integer "price_per_day"
    t.text "description"
    t.string "localisation"
    t.string "type_of_event"
    t.string "type_of_fur"
    t.boolean "cuddle_friendly"
    t.boolean "kid_friendly"
    t.integer "size"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_plushes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "email"
    t.string "password"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "bookings", "plushes"
  add_foreign_key "bookings", "users"
  add_foreign_key "plushes", "users"
end
