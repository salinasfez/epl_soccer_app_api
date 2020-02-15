Rails.application.routes.draw do
  resources :match_days
  resources :user_picks
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
