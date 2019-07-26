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

ActiveRecord::Schema.define(version: 2019_07_26_063929) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.bigint "product_id"
    t.string "volume"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "farmers_profile_id"
    t.index ["farmers_profile_id"], name: "index_orders_on_farmers_profile_id"
    t.index ["product_id"], name: "index_orders_on_product_id"
    t.index ["profile_id"], name: "index_orders_on_profile_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "image"
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
    t.string "email"
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "farmers_profiles", "markets"
  add_foreign_key "farmers_profiles", "profiles"
  add_foreign_key "orders", "farmers_profiles"
  add_foreign_key "orders", "products"
  add_foreign_key "orders", "profiles"
  add_foreign_key "products", "farmers_profiles"
  add_foreign_key "profiles", "users"
  add_foreign_key "reviews", "farmers_profiles"
  add_foreign_key "reviews", "profiles"
end
