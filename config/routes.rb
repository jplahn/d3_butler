Rails.application.routes.draw do
  resources :inputs
  root 'home#index'

  get '/home' => 'home#index'

  get '/input' => 'inputs#index'
  get '/input/new' => 'inputs#new'
  post '/inputs' => 'inputs#index'
end
