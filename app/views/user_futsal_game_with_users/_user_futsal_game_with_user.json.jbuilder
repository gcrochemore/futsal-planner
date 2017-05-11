json.extract! user_futsal_game_with_user, :id, :user_id, :other_user_id, :futsal_game, :user_goal, :user_assist, :other_user_goal, :other_user_assist, :match_with, :victory_with, :draw_with, :lose_with, :match_against, :victory_against, :draw_against, :lose_against, :created_at, :updated_at
json.url user_futsal_game_with_user_url(user_futsal_game_with_user, format: :json)
