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

ActiveRecord::Schema.define(version: 2022_01_19_234258) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clones", force: :cascade do |t|
    t.bigint "original_effect_id", null: false
    t.bigint "effect_clone_id", null: false
    t.string "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["effect_clone_id"], name: "index_clones_on_effect_clone_id"
    t.index ["original_effect_id"], name: "index_clones_on_original_effect_id"
  end

  create_table "effects", force: :cascade do |t|
    t.string "name"
    t.string "brand"
    t.integer "page_views"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "versions", force: :cascade do |t|
    t.bigint "effect_id"
    t.string "version_name"
    t.integer "version_iteration"
    t.integer "year_released"
    t.integer "year_discontinued"
    t.string "manufacturing_location_current"
    t.string "manufacturing_location_former"
    t.string "country_of_origin"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "colours", default: [], array: true
    t.index ["effect_id"], name: "index_versions_on_effect_id"
  end

  add_foreign_key "clones", "versions", column: "effect_clone_id"
  add_foreign_key "clones", "versions", column: "original_effect_id"
  add_foreign_key "versions", "effects"
end