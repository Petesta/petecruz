Blog::Application.routes.draw do
  resources :posts
  resources :sessions
  resources :users

  match '/login' => 'sessions#new', :as => 'login'
  match '/logout' => 'sessions#destroy', :as => 'logout'

  root :to => 'home#index'
end
