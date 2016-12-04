Rails.application.routes.draw do
  get 'quotes/new'
  post 'quotes/create'

  # get 'sessions/new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get 'users/new'

  # static_pages

  # get 'static_pages/about'
  get 'about', to: 'static_pages#about'
  get 'help', to: 'static_pages#help'
  # get 'home', to: 'static_pages#home'
  get 'signup', to: 'users#new'

  # root 'application#hello'
  root 'static_pages#home'

  resources :users

  resources :users do
    resources :quotes
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
