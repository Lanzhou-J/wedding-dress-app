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

ActiveRecord::Schema.define(version: 2020_05_11_090147) do

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
    t.bigint "shop_id", null: false
    t.bigint "size_id", null: false
    t.bigint "silhouette_id", null: false
    t.integer "inventory"
    t.bigint "neckline_id", null: false
    t.bigint "length_id", null: false
    t.bigint "sleeve_id", null: false
    t.index ["length_id"], name: "index_dresses_on_length_id"
    t.index ["neckline_id"], name: "index_dresses_on_neckline_id"
    t.index ["shop_id"], name: "index_dresses_on_shop_id"
    t.index ["silhouette_id"], name: "index_dresses_on_silhouette_id"
    t.index ["size_id"], name: "index_dresses_on_size_id"
    t.index ["sleeve_id"], name: "index_dresses_on_sleeve_id"
  end

  create_table "lengths", force: :cascade do |t|
    t.string "length"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "necklines", force: :cascade do |t|
    t.string "style"
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

  create_table "silhouettes", force: :cascade do |t|
    t.string "style"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sizes", force: :cascade do |t|
    t.integer "size"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sleeves", force: :cascade do |t|
    t.string "style"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "dresses", "lengths"
  add_foreign_key "dresses", "necklines"
  add_foreign_key "dresses", "shops"
  add_foreign_key "dresses", "silhouettes"
  add_foreign_key "dresses", "sizes"
  add_foreign_key "dresses", "sleeves", column: "sleeve_id"
end
