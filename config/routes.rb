Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show]
  resources :posts
  get 'hello/index' => 'hello#index'
  root 'hello#index'
  delete 'posts/:id' => 'posts#destroy'
end
