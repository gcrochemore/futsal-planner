json.extract! futsal_game, :id, :date, :duration, :futsal_field_id, :team_home, :team_outside, :score_home, :score_outside, :video_link, :match_resume_link, :created_at, :updated_at
json.url futsal_game_url(futsal_game, format: :json)
