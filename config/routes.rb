Rails.application.routes.draw do
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#index'

  get 'pages/about', to: 'pages#about'
  resources :articles


  get 'signup', to: 'users#new'
  resources :users, except: [:new]

end
