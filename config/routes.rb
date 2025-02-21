Rails.application.routes.draw do
  root "static_pages#home"
  get "help", to: "static_pages#help"
  get "about", to: "static_pages#about"
  get "contact", to: "static_pages#contact"
  get "signup", to: "users#new"
  get "/login", to: "sessions#new", as: "login"
  post   "/login",   to: "sessions#create"
  delete "/logout",  to: "sessions#destroy"
  resources :users # これで基本アクションをすべて登録している
  resources :microposts,          only: [:create, :destroy]
  get '/microposts', to: 'static_pages#home'
end
