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

ActiveRecord::Schema.define(version: 20140107161525) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assets", force: true do |t|
    t.string   "file_data_file_name"
    t.string   "file_data_content_type"
    t.integer  "file_data_file_size"
    t.datetime "file_data_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assets_offers", force: true do |t|
    t.integer  "assets_id",  null: false
    t.integer  "offers_id",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offer_types", force: true do |t|
    t.string   "name",        null: false
    t.string   "system_name", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offers", force: true do |t|
    t.integer  "types_id",                                  null: false
    t.json     "location"
    t.integer  "cities_id",                                 null: false
    t.integer  "districts_id",                              null: false
    t.string   "street",                                    null: false
    t.string   "home_num"
    t.string   "square",                                    null: false
    t.integer  "layout_types_id"
    t.float    "price"
    t.integer  "house_types_id"
    t.boolean  "is_tradable",               default: false
    t.integer  "balconies_count"
    t.integer  "loggias_count"
    t.integer  "toilet_bath_types_id"
    t.integer  "toilets_count"
    t.integer  "baths_count"
    t.integer  "cargo_lifts_count"
    t.integer  "lifts_count"
    t.text     "realtor_description"
    t.text     "description"
    t.json     "contacts"
    t.integer  "floors_count"
    t.integer  "garages_count"
    t.integer  "time_to_go_to_underground"
    t.string   "floor_num"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offers_offer_types", force: true do |t|
    t.integer  "offers_id",      null: false
    t.integer  "offer_types_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "organizations", force: true do |t|
    t.string   "name",       null: false
    t.integer  "assets_id"
    t.text     "about"
    t.json     "contacts",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "organizations_statements", force: true do |t|
    t.integer  "organizations_id", null: false
    t.integer  "statements_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name",        null: false
    t.string   "system_name", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statements", force: true do |t|
    t.string   "sender",      null: false
    t.string   "contacts",    null: false
    t.text     "body"
    t.integer  "offers_id"
    t.integer  "statuses_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "terms", force: true do |t|
    t.string   "name",            null: false
    t.string   "system_name"
    t.integer  "vocabularies_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "login",            null: false
    t.string   "password",         null: false
    t.integer  "organizations_id", null: false
    t.integer  "roles_id",         null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vocabularies", force: true do |t|
    t.string   "name",        null: false
    t.string   "system_name", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
