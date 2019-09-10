Rails.application.routes.draw do
  namespace :admin do
    get 'rankings/index'
  end
  namespace :admin do
    get 'searches/index'
  end
  namespace :admin do
    get 'admin_users/index'
  end
  namespace :admin do
    get 'orders/index'
    get 'orders/show'
  end
  namespace :admin do
    get 'arrivals/index'
  end
  namespace :admin do
    get 'artists/index'
    get 'artists/show'
    get 'artists/edit'
    get 'artists/new'
  end
  namespace :admin do
    get 'products/index'
    get 'products/show'
    get 'products/edit'
    get 'products/new'
  end
  namespace :admin do
    get 'inquiries/index'
    get 'inquiries/show'
  end
  namespace :admin do
    get 'end_users/index'
    get 'end_users/show'
    get 'end_users/edit'
  end
  get 'end_users/index'
  get 'end_users/show'
  get 'end_users/edit'
  get 'leaves/show'
  get 'rankings/index'
  get 'cards/index'
  get 'searches/index'
  get 'orders/index'
  get 'orders/new'
  get 'carts/index'
  get 'artists/index'
  get 'artists/show'
  get 'products/index'
  get 'products/show'
  get 'inquiries/new'
  get 'deliveries/index'
  get 'deliveries/edit'
  get 'deliveries/new'
  get 'end_users/show'
  get 'end_users/edit'
  get 'g/end_users'
  get 'g/show'
  get 'g/edit'
  devise_for :admin_users
  devise_for :end_users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
