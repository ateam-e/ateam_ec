Rails.application.routes.draw do


  post "likes/:product_id/create" => "likes#create"
  post "likes/:product_id/destroy" => "likes#destroy"


  resources :scenes
  resources :states
root "users#home"
  devise_for :admins
  resources :finalorders
  get "/faction" => "finalorders#finalaction"
  resources :carts

  get "/cupdate" => "carts#update"
  get "/cdelete" => "carts#destroy"

  # get 'carts/new'
  #
  # get 'carts/create'
  #
  # get 'carts/edit'
  #
  # get 'carts/update'
  #
  # get 'carts/index'
  #
  # get 'carts/show'
  #
  # get 'carts/destroy'

  resources :customers
  # get 'customers/new'
  #
  # get 'customers/edit'
  #
  # get 'customers/update'
  #
  # get 'customers/create'
  #
  # get 'customers/destroy'
  #
  # get 'customers/index'
  #
  # get 'customers/show'

  get '/login' => 'customers#login'
  post '/loginprocess' => 'customers#loginprocess'
  get '/logout' => 'customers#logout'

  resources :products
  # get 'products/new'
  #
  # get 'products/create'
  #
  # get 'products/edit'
  #
  # get 'products/update'
  #
  # get 'products/index'
  #
  # get 'products/show'
  #
  # get 'products/destroy'



  resources :categorys
  get 'hitem' => 'categorys#item'
  # get 'categorys/new' => "categorys#new"
  #
  # get 'categorys/edit'
  #
  # get 'categorys/create' => "categorys#create"
  #
  # get 'categorys/update'
  #
  # get 'categorys/destroy'
  #
  # get 'categorys/index'
  #
  # get 'categorys/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/users/home"
  get "/users/show"
  get "/users/:id", to: "users#decision_show"
  post "/users/:id", to: "users#decision_create"
  get "/users/introduce",to: "users#introduce"


end
