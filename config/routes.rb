Rails.application.routes.draw do
  
  root 'welcome#index'

  resources :paper_trail_versions, controller: 'versions'
  resources :companies, :futsal_fields, :game_registrations, :teams, :highlights, :highlight_types, :goal_marks

  devise_for :users
  resources :users

  resources :futsal_games do
    member do
      get :parse_match_resume
      get :affect_player_to_team
    end
  end

  resources :goals do
    member do
      get :mark_goal
    end
  end
  
end
