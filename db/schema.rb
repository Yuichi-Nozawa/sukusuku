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

ActiveRecord::Schema[7.0].define(version: 2023_12_24_062744) do
  create_table "babies", charset: "utf8", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.integer "birth_year"
    t.integer "birth_month"
    t.integer "birth_day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "records", charset: "utf8", force: :cascade do |t|
    t.integer "milk"
    t.boolean "oshikko", default: false
    t.boolean "unchi", default: false
    t.boolean "geri", default: false
    t.string "body_temperature"
    t.text "memo"
    t.bigint "baby_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["baby_id"], name: "index_records_on_baby_id"
  end

  create_table "users", charset: "utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "password", null: false
    t.string "password_confirmation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "records", "babies"
end
