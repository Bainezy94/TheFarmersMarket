# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_08_05_025806) do

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

  create_table "farmers_profiles", force: :cascade do |t|
    t.bigint "profile_id"
    t.string "images"
    t.text "bio"
    t.bigint "market_id"
    t.string "stall_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["market_id"], name: "index_farmers_profiles_on_market_id"
    t.index ["profile_id"], name: "index_farmers_profiles_on_profile_id"
  end

  create_table "markets", force: :cascade do |t|
    t.string "name"
    t.text "location"
    t.text "bio"
    t.text "opening_hours"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "profile_id"
    t.string "volume"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "farmers_profile_id"
    t.index ["farmers_profile_id"], name: "index_orders_on_farmers_profile_id"
    t.index ["profile_id"], name: "index_orders_on_profile_id"
  end

  create_table "orders_products", force: :cascade do |t|
    t.bigint "order_id"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_orders_products_on_order_id"
    t.index ["product_id"], name: "index_orders_products_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "price"
    t.date "picked_date"
    t.boolean "active"
    t.decimal "amount_available"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "unit"
    t.bigint "farmers_profile_id"
    t.index ["farmers_profile_id"], name: "index_products_on_farmers_profile_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "name"
    t.string "avatar"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "profile_id"
    t.string "rating"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "farmers_profile_id"
    t.index ["farmers_profile_id"], name: "index_reviews_on_farmers_profile_id"
    t.index ["profile_id"], name: "index_reviews_on_profile_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "farmers_profiles", "markets"
  add_foreign_key "farmers_profiles", "profiles"
  add_foreign_key "orders", "farmers_profiles"
  add_foreign_key "orders", "profiles"
  add_foreign_key "orders_products", "orders"
  add_foreign_key "orders_products", "products"
  add_foreign_key "products", "farmers_profiles"
  add_foreign_key "profiles", "users"
  add_foreign_key "reviews", "farmers_profiles"
  add_foreign_key "reviews", "profiles"
end
