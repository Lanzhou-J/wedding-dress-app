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

ActiveRecord::Schema.define(version: 2020_05_17_071914) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "cart_dresses", force: :cascade do |t|
    t.bigint "cart_id", null: false
    t.bigint "dress_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cart_id"], name: "index_cart_dresses_on_cart_id"
    t.index ["dress_id"], name: "index_cart_dresses_on_dress_id"
  end

  create_table "carts", force: :cascade do |t|
    t.boolean "completed"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "dresses", force: :cascade do |t|
    t.string "brand"
    t.integer "price"
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
    t.string "name"
    t.integer "shipping_cost"
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

  create_table "orders", force: :cascade do |t|
    t.bigint "shop_id", null: false
    t.bigint "user_id", null: false
    t.bigint "dress_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "dress_key"
    t.index ["dress_id"], name: "index_orders_on_dress_id"
    t.index ["shop_id"], name: "index_orders_on_shop_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.integer "merchant_or_personal"
    t.string "location"
    t.text "description"
    t.date "opening_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "has_physical_store"
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_shops_on_user_id"
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

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.boolean "is_admin"
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "cart_dresses", "carts"
  add_foreign_key "cart_dresses", "dresses"
  add_foreign_key "carts", "users"
  add_foreign_key "dresses", "lengths"
  add_foreign_key "dresses", "necklines"
  add_foreign_key "dresses", "shops"
  add_foreign_key "dresses", "silhouettes"
  add_foreign_key "dresses", "sizes"
  add_foreign_key "dresses", "sleeves", column: "sleeve_id"
  add_foreign_key "orders", "dresses"
  add_foreign_key "orders", "shops"
  add_foreign_key "orders", "users"
  add_foreign_key "shops", "users"
end
