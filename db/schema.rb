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

ActiveRecord::Schema.define(version: 20150324195559) do

  create_table "favorites", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "favoritied_id"
    t.string   "favoritied_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "favorites", ["favoritied_type", "favoritied_id"], name: "index_favorites_on_favoritied_type_and_favoritied_id"
  add_index "favorites", ["user_id"], name: "index_favorites_on_user_id"

  create_table "jobs", force: :cascade do |t|
    t.string   "al_url"
    t.datetime "al_created_at"
    t.string   "currency_code"
    t.string   "description"
    t.string   "equity_cliff"
    t.string   "equity_max"
    t.string   "equity_min"
    t.string   "equity_vest"
    t.integer  "al_job_id"
    t.string   "job_type"
    t.boolean  "remote_ok"
    t.integer  "salary_max"
    t.integer  "salary_min"
    t.string   "skilltag_display_names"
    t.integer  "al_start_id"
    t.integer  "al_loc_id"
    t.string   "title"
    t.datetime "al_updated_at"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "role_name"
    t.string   "skills_list"
  end

  add_index "jobs", ["al_job_id"], name: "index_jobs_on_al_job_id", unique: true
  add_index "jobs", ["al_start_id"], name: "index_jobs_on_al_start_id", unique: true

  create_table "locations", force: :cascade do |t|
    t.string   "al_url"
    t.string   "display_name"
    t.integer  "al_loc_id"
    t.string   "address"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.float    "latitude"
    t.float    "longitude"
    t.string   "zipcode"
    t.string   "city"
    t.string   "state"
  end

  add_index "locations", ["al_loc_id"], name: "index_locations_on_al_loc_id", unique: true

  create_table "startups", force: :cascade do |t|
    t.string   "al_url"
    t.boolean  "community_profile"
    t.string   "url"
    t.datetime "al_created_at"
    t.integer  "follower_count"
    t.boolean  "hidden"
    t.string   "high_concept"
    t.integer  "al_start_id"
    t.string   "logo_url"
    t.string   "name"
    t.string   "prod_desc"
    t.integer  "quality"
    t.string   "thumb_url"
    t.datetime "al_updated_at"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "al_loc_id"
  end

  add_index "startups", ["al_start_id"], name: "index_startups_on_al_start_id", unique: true

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "zillows", force: :cascade do |t|
    t.integer  "al_loc_id"
    t.integer  "med_house_income"
    t.integer  "med_nat_house_income"
    t.integer  "zillow_HVI"
    t.integer  "zillow_nat_HVI"
    t.float    "avg_commute_time"
    t.float    "avg_nat_commute_time"
    t.text     "education"
    t.text     "people_culture"
    t.text     "transportation"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "zillows", ["al_loc_id"], name: "index_zillows_on_al_loc_id", unique: true

end
