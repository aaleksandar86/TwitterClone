Rails.application.routes.draw do
  root to: 'tweets#index'
  get 'tweets/index'
  get '/tweets', to: 'tweets#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
