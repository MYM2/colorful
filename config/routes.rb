Rails.application.routes.draw do
  root 'products#index'
  devise_for :admin_users
  devise_for :end_users
  namespace :admin do
    resources :rankings, only: [:index]
    resources :searches, only: [:index]
    resources :admin_users, only: [:index]
    resources :orders, only: [:index, :show, :update]
    resources :disposals, only: [:create]
    resources :arrivals, only: [:index, :create]
    resources :artists
    resources :products
    resources :replies, only: [:create]
    resources :inquiries, only: [:index, :show]
    resources :end_users, only: [:index, :show, :edit, :destroy, :update]
    delete 'admin/end_users/:id' => 'end_users#really_destroy', as:'really_destroy'
    resources :discs, only: [:destroy]
    resources :songs, only: [:destroy]
  end
  # post '/admin/orders/:id' => 'admin/orders#update', as: 'admin_order_update'
  resources :end_users, only: [:show, :edit, :update]
  resources :leaves, only: [:show, :destroy]
  resources :rankings, only: [:index]
  resources :cards, only: [:index]
  resources :searches, only: [:index]
  resources :order_contents, only: [:create]
  resources :orders, only: [:create, :new, :show]
  resources :carts, only: [:show, :destroy, :update, :create]
  resources :artists, only: [:index, :show]
  resources :reviews, only: [:destroy, :create]
  resources :favorites, only: [:destroy, :create]
  resources :products, only: [:index, :show]
  resources :inquiries, only: [:new, :create]
  resources :deliveries, only: [:show, :edit, :destroy, :new, :update, :create]



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
