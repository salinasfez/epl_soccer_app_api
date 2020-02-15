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

ActiveRecord::Schema.define(version: 2020_02_15_174544) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "match_days", force: :cascade do |t|
    t.integer "day"
    t.string "game"
    t.string "team_a"
    t.integer "team_a_points"
    t.string "team_b"
    t.integer "team_b_points"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_picks", force: :cascade do |t|
    t.string "picks"
    t.integer "pick_points"
    t.integer "current_points"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "favorite_team"
    t.integer "pick_points"
    t.integer "current_points"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
