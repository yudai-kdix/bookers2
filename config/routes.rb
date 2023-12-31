Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  
  get '/home/about' => 'homes#about', as:'about' 
  resources :users, only: [:index, :show, :edit, :update]
  resources :books, only: [:index, :show, :create, :update, :edit, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
end