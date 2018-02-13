Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'about', to: 'pages#apropos', as: :apropos

  # get 'contact', to: 'pages#contact',  as: :contact
  get 'realisations', to: 'pages#realisation',  as: :realisations


  get 'contact', to: 'contacts#new', as: 'contact'
  post 'contact', to: 'contacts#create'

end



