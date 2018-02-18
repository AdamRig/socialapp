
Rails.application.routes.draw do

  resources :posts do
	resources :comments
  end
  get 'pages/home'
  
  controller :sessions do
	get 'login' => :new
	post 'login' => :create
	get 'logout' => :destroy
	post 'logout' => :destroy
  end

  resources :users
  resources :posts
  resources :categories
  get'/posts' => 'pages#posts'
  get'/users' => 'pages#users'
  get'/categories' => 'pages#categories'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
end
