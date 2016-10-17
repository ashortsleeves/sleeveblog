Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :posts
  get 'posts/index'
  get 'static_pages/contact'
  get 'static_pages/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


   root 'posts#index'
end
