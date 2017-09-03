Rails.application.routes.draw do
  
  root 'welcome#show'

  resources :paper_trail_versions, controller: 'versions'
  resources :companies, :futsal_fields, :game_registrations, :teams, :highlights, 
            :highlight_types, :goal_marks, :user_futsal_game_with_users,
            :futsal_tournament_player_registrations, :futsal_tournament_team_registrations, 
            :futsal_tournaments, :futsal_positions, :futsal_game_player_positions

  devise_for :users
  resources :users

  resources :futsal_games do
    member do
      get :parse_match_resume
      get :affect_player_to_team
      get :calculate_goalkeeper_position
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
  
end
