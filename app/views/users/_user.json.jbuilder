json.extract! user, :id, :first_name, :last_name, :company, :match, :match_with_stats, :goal, :goal_average_by_match, :assist, :assist_average_by_match, :rating, :created_at, :updated_at
json.url user_url(user, format: :json)
json.position user.futsal_position.nil? ? '?' : user.futsal_position.abbreviation
json.picture user.picture.nil? ? asset_url('fifa/players/inconnu.jpg') : asset_url('fifa/players/' + user.picture)