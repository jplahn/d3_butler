Rails.application.routes.draw do
  resources :inputs do
    resources :visualizations
  end

  root 'inputs#new'

  get '/home' => 'home#index'

  get '/input' => 'inputs#index'
  get '/input/new' => 'inputs#new'
  post '/inputs' => 'inputs#index'

  get '/visualization' => 'visualizations#index'

  get '/input/:id/visualizations' => 'visualization#view'
end