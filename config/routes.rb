Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'contact', to: 'pages#contact',  as: :contact
  get 'realisations', to: 'pages#realisation',  as: :realisations

  # resources :messages, only: [:create, :index], :path => "contact"

  # resources "contacts", only: [:new, :create]
  match '/contacts',     to: 'contacts#new', via: 'get'
  resources "contacts", only: [:new, :create]
end
