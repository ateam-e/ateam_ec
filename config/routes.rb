Rails.application.routes.draw do

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


end
