Rails.application.routes.draw do
  root 'pages#index'

  resources :paper_trail_versions, controller: 'versions'
  resources :companies, :futsal_fields, :game_registrations, :teams, :highlights, 
            :highlight_types, :goal_marks, :user_futsal_game_with_users,
            :futsal_tournament_player_registrations, :futsal_tournament_team_registrations, 
            :futsal_tournaments, :futsal_positions, :futsal_game_player_positions,
            :futsal_game_player_position_changes, :futsal_game_invitations, :user_futsal_trophies,
            :futsal_trophies, :nationalities

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users do
    member do
      get :show_statistics_full
    end
  end
  resources :authentications, only: [:destroy]

  resources :futsal_games do
    member do
      get :affect_or_invite_players
      get :parse_match_resume
      get :parse_stats
      get :affect_player_to_team
      get :calculate_goalkeeper_position
      get :send_email_to_prevent_statistics_are_up_to_date
      get :send_email_to_prevent_teams_are_up_to_date
      get :teams_making
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
  get '/show_fixtures_users', to: 'admin#show_fixtures_users_view'
  get '/show_fixtures_futsal_games', to: 'admin#show_fixtures_futsal_games_view'
  get '/show_fixtures_teams', to: 'admin#show_fixtures_teams_view'

  get '/how_the_mark_is_calculated', to: 'pages#how_the_mark_is_calculated'
end
