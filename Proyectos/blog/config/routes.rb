Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  
  
  get "special", to: "welcome#index" #renombro la ruta como special y me dirige a welcome index

  resources :articles 
  # Crea Acciones CRUD
  # resources :articles, only: [:create, :show]
  # resources :articles, except: [:delete]
=begin  
    get "/articles" index
    post "/articles" create
    delete "/articles/:id" destroy
    get "/articles/:id" show
    get "/articles/:new" new
    get "/articles/:id/edit" edit
    patch "/articles/:id" update
    put "/articles/;id" update
=end 
end