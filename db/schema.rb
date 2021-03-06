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

ActiveRecord::Schema.define(version: 2020_05_26_225335) do

  create_table "favorites_lists", force: :cascade do |t|
    t.integer "hike_id", null: false
    t.integer "user_id", null: false
    t.index ["hike_id"], name: "index_favorites_lists_on_hike_id"
    t.index ["user_id"], name: "index_favorites_lists_on_user_id"
  end

  create_table "hikes", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.float "length"
    t.string "difficulty"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

  add_foreign_key "favorites_lists", "hikes"
  add_foreign_key "favorites_lists", "users"
end
