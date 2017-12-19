Rails.application.routes.draw do
  root 'pages#index'

  resources :paper_trail_versions, controller: 'versions'
  resources :companies, :futsal_fields, :game_registrations, :teams, :highlights, 
            :highlight_types, :goal_marks, :user_futsal_game_with_users,
            :futsal_tournament_player_registrations, :futsal_tournament_team_registrations, 
            :futsal_tournaments, :futsal_positions, :futsal_game_player_positions,
            :futsal_game_player_position_changes, :futsal_game_invitations, :user_futsal_trophies,
            :futsal_trophies, :nationalities

  devise_for :users
  resources :users do
    member do
      get :show_statistics_full
    end
  end

  resources :futsal_games do
    member do
      get :affect_or_invite_players
      get :parse_match_resume
      get :affect_player_to_team
      get :calculate_goalkeeper_position
      get :send_email_to_prevent_statistics_are_up_to_date
      get :send_email_to_prevent_teams_are_up_to_date
    end
  end

  resources :goals do
    member do
      get :mark_goal
      get :show_embed
    end
  end

  get '/export_db', to: 'admin#export_db'
  get '/show_db', to: 'admin#show_db_view'
  get '/create_seeds', to: 'admin#create_seeds'
  get '/show_admin', to: 'admin#show'

  get '/how_the_mark_is_calculated', to: 'pages#how_the_mark_is_calculated'
end
