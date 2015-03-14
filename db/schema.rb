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

ActiveRecord::Schema.define(version: 20150314184448) do

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
  end

  create_table "locations", force: :cascade do |t|
    t.string   "al_url"
    t.string   "display_name"
    t.integer  "al_loc_id"
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "al_url"
    t.string   "display_name"
    t.integer  "al_role_id"
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

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
  end

end
