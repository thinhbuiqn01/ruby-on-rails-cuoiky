Rails.application.routes.draw do 
  get 'admin/dashboard'
   
  root  'static_pages#home'   
  get 'help'=> 'static_pages#help'
  get 'signup'  => 'users#new'
  get 'admin'  => 'admin#dashboard'
  
   
  resources :sessions, only: [:new, :create, :destroy] 
  get "login", to: "sessions#new", as: "login"
  get "logout", to: "sessions#destroy", as: "logout"
  resources :users
end
