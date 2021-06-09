Rails.application.routes.draw do
  root 'home#index'

  namespace :api, defaults: { format: :json } do
    resources :permanent_parkers
    resources :sessions
  end
end
