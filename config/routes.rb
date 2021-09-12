Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :books, only: [:new, :create, :index, :show, :destroy, :edit] 
  resources :users, only: [:new, :create, :index, :show, :destroy, :edit]
  get 'homes/about' => 'homes#about'
  get 'user' => 'users#show'
  get 'users/:id' => 'books#show'
end
