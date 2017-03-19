json.extract! futsal_game, :id, :date, :duration, :team_home_id, :team_outside_id, :score_home, :score_outside, :created_at, :updated_at
json.url futsal_game_url(futsal_game, format: :json)
