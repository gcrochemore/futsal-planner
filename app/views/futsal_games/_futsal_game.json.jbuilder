json.extract! futsal_game, :id, :date, :duration, :futsal_field_id, :team_home, :team_outside, :score_home, :score_outside, :video_link, :match_resume_link, :created_at, :updated_at
json.url futsal_game_url(futsal_game, format: :json)

json.team_home_players(futsal_game.team_home_players) do |player|
  json.partial! 'users/user', user: player.user
end

json.team_outside_players(futsal_game.team_outside_players) do |player|
  json.partial! 'users/user', user: player.user
end

json.goals(futsal_game.goals) do |goal|
  json.partial! 'goals/goal', goal: goal
end
