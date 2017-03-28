Rails.application.routes.draw do
  root 'welcome#index'

  resources :paper_trail_versions, controller: 'versions'
  resources :companies,:futsal_fields, :game_registrations, :teams, :goals

  devise_for :users
  scope '/admin' do
    resources :users
  end

  resources :futsal_games do
    member do
      get :parse_match_resume
    end
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
