json.extract! game_registration, :id, :user_id, :fustal_game_id, :team_id, :created_at, :updated_at
json.url game_registration_url(game_registration, format: :json)
