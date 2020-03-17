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

ActiveRecord::Schema.define(version: 2020_03_16_102411) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string "text"
    t.bigint "user_id"
    t.bigint "tuto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tuto_id"], name: "index_comments_on_tuto_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "elements", force: :cascade do |t|
    t.string "text"
    t.string "code"
    t.string "reference"
    t.integer "order"
    t.bigint "tuto_id"
    t.bigint "style_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "language_code"
    t.string "language_text"
    t.index ["style_id"], name: "index_elements_on_style_id"
    t.index ["tuto_id"], name: "index_elements_on_tuto_id"
  end

  create_table "language_tables", force: :cascade do |t|
    t.bigint "language_id"
    t.bigint "tuto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["language_id"], name: "index_language_tables_on_language_id"
    t.index ["tuto_id"], name: "index_language_tables_on_tuto_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statics", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "styles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tag_tables", force: :cascade do |t|
    t.bigint "tag_id"
    t.bigint "tuto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag_id"], name: "index_tag_tables_on_tag_id"
    t.index ["tuto_id"], name: "index_tag_tables_on_tuto_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tutos", force: :cascade do |t|
    t.string "title"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_tutos_on_user_id"
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

end
