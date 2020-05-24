Rails.application.routes.draw do
  root to: 'tweets#index'
  get '/tweets', to: 'tweets#index'
  get '/tweets/:id', to: 'tweets#show', as: :show_tweet
  get '/tweets/new', to: 'tweets#new', as: :new_tweet
  post '/tweets', to: 'tweets#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
