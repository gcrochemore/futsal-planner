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

ActiveRecord::Schema.define(version: 20170410190000) do

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "email_mask"
    t.string   "picture"
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

  create_table "futsal_game_player_position_changes", force: :cascade do |t|
    t.integer  "futsal_position_id"
    t.integer  "time"
    t.integer  "game_registration_player_in_id"
    t.integer  "game_registration_player_out_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.index ["futsal_position_id"], name: "futsal_position_on_futsal_game_player_position_changes"
  end

  create_table "futsal_game_player_positions", force: :cascade do |t|
    t.integer  "game_registration_id"
    t.integer  "futsal_position_id"
    t.integer  "begin_time"
    t.integer  "end_time"
    t.integer  "duration"
    t.boolean  "calculated",           default: false
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.index ["futsal_position_id"], name: "index_futsal_game_player_positions_on_futsal_position_id"
    t.index ["game_registration_id"], name: "index_futsal_game_player_positions_on_game_registration_id"
  end

  create_table "futsal_games", force: :cascade do |t|
    t.datetime "date"
    t.integer  "duration"
    t.integer  "futsal_tournament_id"
    t.integer  "futsal_field_id"
    t.integer  "team_home_id"
    t.integer  "team_outside_id"
    t.integer  "score_home"
    t.integer  "score_outside"
    t.string   "video_link"
    t.string   "match_resume_link"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["futsal_field_id"], name: "index_futsal_games_on_futsal_field_id"
    t.index ["futsal_tournament_id"], name: "index_futsal_games_on_futsal_tournament_id"
  end

  create_table "futsal_positions", force: :cascade do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.float    "average_goal_multiplier"
    t.float    "average_assist_multiplier"
    t.float    "average_goal_against_multiplier"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "futsal_tournament_player_registrations", force: :cascade do |t|
    t.integer  "futsal_tournament_id"
    t.integer  "team_id"
    t.integer  "user_id"
    t.integer  "goal"
    t.integer  "goal_with_assist"
    t.integer  "goal_without_assist"
    t.integer  "assist"
    t.integer  "goalkeeper_duration"
    t.integer  "player_duration"
    t.integer  "substitute_duration"
    t.integer  "goalkeeper_goal_against"
    t.float    "goalkeeper_goal_against_average"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.index ["futsal_tournament_id"], name: "futsal_tournament_on_player_registrations"
    t.index ["team_id"], name: "index_futsal_tournament_player_registrations_on_team_id"
    t.index ["user_id"], name: "index_futsal_tournament_player_registrations_on_user_id"
  end

  create_table "futsal_tournament_team_registrations", force: :cascade do |t|
    t.integer  "futsal_tournament_id"
    t.integer  "team_id"
    t.integer  "ranking"
    t.integer  "match_goal_for"
    t.integer  "match_goal_against"
    t.integer  "match_goal_difference"
    t.integer  "points"
    t.integer  "victory"
    t.integer  "draw"
    t.integer  "lose"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["futsal_tournament_id"], name: "futsal_tournament_on_team_registrations"
    t.index ["team_id"], name: "index_futsal_tournament_team_registrations_on_team_id"
  end

  create_table "futsal_tournaments", force: :cascade do |t|
    t.string   "name"
    t.datetime "date"
    t.integer  "duration"
    t.integer  "futsal_field_id"
    t.integer  "winner_id"
    t.integer  "best_goalkeeper_id"
    t.integer  "best_scorer_id"
    t.integer  "best_passer_id"
    t.integer  "best_goal_id"
    t.integer  "more_substitute_id"
    t.integer  "more_player_id"
    t.integer  "bigger_fault_id"
    t.integer  "best_injury_id"
    t.integer  "more_fair_play_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["futsal_field_id"], name: "index_futsal_tournaments_on_futsal_field_id"
  end

  create_table "game_registrations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "futsal_game_id"
    t.integer  "team_id"
    t.integer  "goal"
    t.integer  "goal_with_assist"
    t.integer  "goal_without_assist"
    t.integer  "assist"
    t.integer  "goalkeeper_duration"
    t.integer  "player_duration"
    t.integer  "substitute_duration"
    t.integer  "goalkeeper_goal_against"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["futsal_game_id"], name: "index_game_registrations_on_futsal_game_id"
    t.index ["team_id"], name: "index_game_registrations_on_team_id"
    t.index ["user_id"], name: "index_game_registrations_on_user_id"
  end

  create_table "goal_marks", force: :cascade do |t|
    t.integer  "goal_id"
    t.integer  "mark"
    t.integer  "user_id"
    t.string   "mac_address"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["goal_id"], name: "index_goal_marks_on_goal_id"
    t.index ["user_id"], name: "index_goal_marks_on_user_id"
  end

  create_table "goals", force: :cascade do |t|
    t.integer  "futsal_game_id"
    t.integer  "team_id"
    t.integer  "goal_id"
    t.integer  "assist_id"
    t.integer  "goalkeeper_id"
    t.integer  "time"
    t.string   "video_link"
    t.integer  "views_number"
    t.float    "average_mark"
    t.boolean  "own_goal",       default: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
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
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_roles_on_name"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_teams_on_company_id"
  end

  create_table "user_futsal_game_with_users", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "other_user_id"
    t.integer  "futsal_game"
    t.integer  "user_goal"
    t.integer  "user_assist"
    t.integer  "other_user_goal"
    t.integer  "other_user_assist"
    t.integer  "match_with"
    t.integer  "victory_with"
    t.integer  "draw_with"
    t.integer  "lose_with"
    t.integer  "match_against"
    t.integer  "victory_against"
    t.integer  "draw_against"
    t.integer  "lose_against"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["user_id"], name: "index_user_futsal_game_with_users_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                           default: "",   null: false
    t.string   "encrypted_password",              default: "",   null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                   default: 0,    null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",                 default: 0,    null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "company_id"
    t.integer  "futsal_position_id"
    t.string   "picture"
    t.integer  "goal"
    t.integer  "own_goal"
    t.integer  "goal_with_assist"
    t.integer  "goal_without_assist"
    t.integer  "assist"
    t.float    "match"
    t.integer  "match_time"
    t.float    "match_with_stats"
    t.integer  "match_with_stats_time"
    t.integer  "goalkeeper_duration"
    t.integer  "player_duration"
    t.integer  "substitute_duration"
    t.integer  "goalkeeper_goal_against"
    t.float    "goalkeeper_goal_against_average"
    t.integer  "match_goal_for"
    t.integer  "match_goal_against"
    t.integer  "match_goal_difference"
    t.float    "goal_average_by_match"
    t.float    "own_goal_average_by_match"
    t.float    "goal_percent_by_match"
    t.float    "assist_average_by_match"
    t.float    "assist_percent_by_match"
    t.string   "games_results"
    t.integer  "victory"
    t.integer  "draw"
    t.integer  "lose"
    t.float    "victory_percentage"
    t.string   "last_result"
    t.float    "goal_mark"
    t.float    "assist_mark"
    t.float    "victory_mark"
    t.float    "rating",                          default: 65.0
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.index ["company_id"], name: "index_users_on_company_id"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["futsal_position_id"], name: "index_users_on_futsal_position_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

end
