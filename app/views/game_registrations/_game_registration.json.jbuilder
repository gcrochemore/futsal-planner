json.extract! game_registration, :id, :user_id, :futsal_game_id, :team_id, :goal, :assist, :created_at, :updated_at
json.url game_registration_url(game_registration, format: :json)
