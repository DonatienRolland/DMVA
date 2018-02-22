Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'about', to: 'pages#apropos', as: :apropos

  # get 'contact', to: 'pages#contact',  as: :contact
  get 'realisations', to: 'pages#realisation',  as: :realisations

  resources :articles
  resources :contacts, only: [ :new, :create ]
  # get 'contact', to: 'contacts#new', as: 'contact'


end



