Rails.application.routes.draw do
  root 'welcome#index'

  devise_for :users
  resources :paper_trail_versions, controller: 'versions'
  devise_scope :user do 
    match '/sessions/user', to: 'devise/sessions#create', via: :post
  end

  resources :companies,:futsal_fields, :futsal_games, :game_registrations, :teams


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
