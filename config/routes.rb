Rails.application.routes.draw do
  root to: 'tweets#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get 'users/signup', to: 'users#new'
  resources :users, except: :new

  resources :tweets do
    resources :comments
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
