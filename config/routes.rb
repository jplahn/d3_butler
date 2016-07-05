Rails.application.routes.draw do
  resources :visualizations
  resources :inputs do
    resources :visualizations
  end

  root 'home#index'

  get '/home' => 'home#index'

  get '/input' => 'inputs#index'
  get '/input/new' => 'inputs#new'
  post '/inputs' => 'inputs#index'
end
