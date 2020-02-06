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

ActiveRecord::Schema.define(version: 2020_02_06_080218) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abouts", force: :cascade do |t|
    t.string "title"
    t.string "subtitle"
    t.text "body"
    t.text "subbody"
    t.boolean "status", default: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_abouts_on_user_id"
  end

  create_table "blogs", force: :cascade do |t|
    t.string "title"
    t.string "subtitle"
    t.text "body"
    t.boolean "status", default: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_blogs_on_user_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "title"
    t.string "address"
    t.string "city"
    t.string "province"
    t.string "country"
    t.string "postcode"
    t.string "tel"
    t.string "mobile"
    t.string "email"
    t.string "website"
    t.string "facebook"
    t.string "instagram"
    t.string "whatsapp"
    t.string "line"
    t.boolean "status"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_contacts_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "suffix"
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.string "age"
    t.text "body"
    t.string "mobile"
    t.string "email"
    t.string "website"
    t.string "facebook"
    t.string "instagram"
    t.string "line"
    t.string "whatsapp"
    t.string "roles"
    t.string "nick_name"
    t.boolean "status"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "welcomes", force: :cascade do |t|
    t.string "title"
    t.string "subtitle"
    t.string "body"
    t.string "subbody"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.boolean "status"
    t.index ["user_id"], name: "index_welcomes_on_user_id"
  end

  create_table "whies", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.boolean "status", default: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "faicon"
    t.index ["user_id"], name: "index_whies_on_user_id"
  end

  add_foreign_key "abouts", "users"
  add_foreign_key "blogs", "users"
  add_foreign_key "contacts", "users"
  add_foreign_key "profiles", "users"
  add_foreign_key "welcomes", "users"
  add_foreign_key "whies", "users"
end
