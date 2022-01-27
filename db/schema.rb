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

ActiveRecord::Schema.define(version: 2022_01_27_225049) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string "name", null: false
    t.integer "year_founded"
    t.string "logo_image_link"
    t.string "website_link"
    t.string "parent_company"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "country_founded"
    t.string "area_founded"
  end

  create_table "effects", force: :cascade do |t|
    t.bigint "brand_id"
    t.string "name"
    t.integer "page_views"
    t.string "image_link"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brand_id"], name: "index_effects_on_brand_id"
  end

  create_table "variants", id: :bigint, default: -> { "nextval('clones_id_seq'::regclass)" }, force: :cascade do |t|
    t.bigint "original_effect_id", null: false
    t.bigint "effect_clone_id", null: false
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "is_clone"
    t.index ["effect_clone_id"], name: "index_clones_on_effect_clone_id"
    t.index ["original_effect_id"], name: "index_clones_on_original_effect_id"
  end

  create_table "versions", force: :cascade do |t|
    t.bigint "effect_id"
    t.string "effect_format"
    t.string "version_name"
    t.integer "version_iteration"
    t.integer "year_released"
    t.integer "year_discontinued"
    t.string "manufacturing_location_current"
    t.string "manufacturing_location_former"
    t.string "country_of_origin"
    t.string "colours", default: [], array: true
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "effect_type"
    t.decimal "length"
    t.decimal "width"
    t.decimal "height"
    t.text "sources", default: [], array: true
    t.index ["effect_id"], name: "index_versions_on_effect_id"
  end

  add_foreign_key "effects", "brands"
  add_foreign_key "variants", "versions", column: "effect_clone_id"
  add_foreign_key "variants", "versions", column: "original_effect_id"
  add_foreign_key "versions", "effects"
end
