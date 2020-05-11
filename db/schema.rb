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

ActiveRecord::Schema.define(version: 2020_05_11_082750) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dresses", force: :cascade do |t|
    t.string "brand"
    t.integer "price"
    t.integer "shiping_cost"
    t.text "description"
    t.boolean "is_sold"
    t.boolean "is_preorder"
    t.string "color"
    t.string "texture"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.integer "merchant_or_personal"
    t.string "location"
    t.text "description"
    t.date "opening_time"
    t.boolean "has_pysical_store"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
