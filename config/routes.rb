Rails.application.routes.draw do
  root 'welcome#index'

  resources :paper_trail_versions, controller: 'versions'
  resources :companies,:futsal_fields, :game_registrations, :teams, :highlights, :highlight_types, :goals

  devise_for :users
  scope '/admin' do
    resources :users
  end

  resources :futsal_games do
    member do
      get :parse_match_resume
    end
  end
end
