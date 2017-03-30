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

ActiveRecord::Schema.define(version: 20170330220258) do

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "email_mask"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "futsal_fields", force: :cascade do |t|
    t.string   "name"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "futsal_games", force: :cascade do |t|
    t.datetime "date"
    t.integer  "duration"
    t.integer  "futsal_field_id"
    t.integer  "team_home_id"
    t.integer  "team_outside_id"
    t.integer  "score_home"
    t.integer  "score_outside"
    t.string   "video_link"
    t.string   "match_resume_link"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["futsal_field_id"], name: "index_futsal_games_on_futsal_field_id"
  end

  create_table "game_registrations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "futsal_game_id"
    t.integer  "team_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["futsal_game_id"], name: "index_game_registrations_on_futsal_game_id"
    t.index ["team_id"], name: "index_game_registrations_on_team_id"
    t.index ["user_id"], name: "index_game_registrations_on_user_id"
  end

  create_table "goals", force: :cascade do |t|
    t.integer  "futsal_game_id"
    t.integer  "team_id"
    t.integer  "goal_id"
    t.integer  "assist_id"
    t.integer  "time"
    t.string   "video_link"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["futsal_game_id"], name: "index_goals_on_futsal_game_id"
    t.index ["team_id"], name: "index_goals_on_team_id"
  end

  create_table "highlight_types", force: :cascade do |t|
    t.string   "name"
    t.string   "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "highlights", force: :cascade do |t|
    t.string   "name"
    t.integer  "highlight_type_id"
    t.integer  "author_id"
    t.integer  "victim_id"
    t.integer  "time"
    t.integer  "futsal_game_id"
    t.integer  "team_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["futsal_game_id"], name: "index_highlights_on_futsal_game_id"
    t.index ["highlight_type_id"], name: "index_highlights_on_highlight_type_id"
    t.index ["team_id"], name: "index_highlights_on_team_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_roles_on_name"
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_teams_on_company_id"
  end

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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "company_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["company_id"], name: "index_users_on_company_id"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
  end

end
