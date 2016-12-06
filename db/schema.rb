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

ActiveRecord::Schema.define(version: 20161206140251) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "banking_titles", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "firm_id"
    t.string   "group"
    t.string   "division"
    t.string   "title"
    t.string   "photo"
    t.string   "business_card"
    t.string   "email"
    t.string   "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "privacy"
    t.string   "alma_mater"
  end

  create_table "firms", force: :cascade do |t|
    t.string   "name"
    t.string   "industry"
    t.string   "size"
    t.string   "process_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "league"
  end

  create_table "follow_ups", force: :cascade do |t|
    t.string   "follow_up_type"
    t.integer  "touchpoint_id"
    t.integer  "user_id"
    t.integer  "firm_id"
    t.integer  "contact_id"
    t.string   "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "group_members", force: :cascade do |t|
    t.integer  "group_id"
    t.integer  "user_id"
    t.boolean  "is_admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.string   "school"
    t.string   "industry"
    t.boolean  "open_or_closed"
    t.boolean  "hidden_or_public"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "industries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leagues", force: :cascade do |t|
    t.string   "league"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "milestones", force: :cascade do |t|
    t.date     "campus_recruiting_start"
    t.date     "closed_events_start"
    t.date     "bankweek"
    t.date     "interviews_start"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "group_id"
  end

  create_table "process_types", force: :cascade do |t|
    t.string   "process_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "recruiting_events", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "address"
    t.date     "date"
    t.time     "start_time"
    t.time     "end_time"
    t.boolean  "closed"
    t.integer  "firm_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "privacy"
  end

  create_table "target_firms", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "firm_id"
    t.string   "touch_goal"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "privacy"
  end

  create_table "touchpoints", force: :cascade do |t|
    t.date     "date"
    t.time     "time"
    t.integer  "user_id"
    t.integer  "contact_id"
    t.integer  "firm_id"
    t.string   "description"
    t.string   "location"
    t.string   "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "privacy"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "password"
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "organization"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "group_members_count"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "verifies", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "recruiting_event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "xy_graph_shells", force: :cascade do |t|
    t.string   "x"
    t.string   "y"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
