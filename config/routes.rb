
Rails.application.routes.draw do
  resources :users
  resources :posts
  resources :categories
  get'/posts' => 'pages#posts'
  get'/users' => 'pages#users'
  get'/categories' => 'pages#categories'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
