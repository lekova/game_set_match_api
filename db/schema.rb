# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150906162453) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "street",     null: false
    t.string   "city",       null: false
    t.string   "state"
    t.string   "zipcode",    null: false
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "game_ratings", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "user_id"
    t.integer  "rate"
    t.text     "user_comment"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "game_ratings", ["game_id"], name: "index_game_ratings_on_game_id", using: :btree
  add_index "game_ratings", ["user_id", "game_id"], name: "index_game_ratings_on_user_id_and_game_id", unique: true, using: :btree

  create_table "games", force: :cascade do |t|
    t.datetime "datetime"
    t.integer  "duration"
    t.string   "place"
    t.integer  "winner_id"
    t.integer  "loser_id"
    t.text     "comment"
    t.integer  "status",     default: 0, null: false
    t.string   "score"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "games", ["loser_id"], name: "index_games_on_loser_id", using: :btree
  add_index "games", ["winner_id"], name: "index_games_on_winner_id", using: :btree

  create_table "proficiency_types", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "description", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "user_addresses", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "address_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_addresses", ["address_id"], name: "index_user_addresses_on_address_id", using: :btree
  add_index "user_addresses", ["user_id"], name: "index_user_addresses_on_user_id", using: :btree

  create_table "user_proficiency_types", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "proficiency_type_id"
    t.string   "user_comment"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "user_proficiency_types", ["proficiency_type_id"], name: "index_user_proficiency_types_on_proficiency_type_id", using: :btree
  add_index "user_proficiency_types", ["user_id"], name: "index_user_proficiency_types_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",              null: false
    t.string   "password_digest",    null: false
    t.string   "name",               null: false
    t.integer  "age",                null: false
    t.string   "gender",             null: false
    t.text     "about_me"
    t.string   "token",              null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["token"], name: "index_users_on_token", unique: true, using: :btree

  add_foreign_key "game_ratings", "games"
  add_foreign_key "game_ratings", "users"
  add_foreign_key "games", "users", column: "loser_id"
  add_foreign_key "user_addresses", "addresses"
  add_foreign_key "user_addresses", "users"
  add_foreign_key "user_proficiency_types", "proficiency_types"
  add_foreign_key "user_proficiency_types", "users"
end
