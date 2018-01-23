Rails.application.routes.draw do

  namespace :admin do
  get 'dashboard/main'
  get 'dashboard/user'
  get 'dashboard/blog'
  end
  

  get 'about', to: 'pages#about'

  get 'contact', to: 'pages#contact', as: 'lead' 
  root to: 'pages#home'

  resources :blogs
  resources :posts

  get 'posts/*missing', to: 'posts#missing'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
