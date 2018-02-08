Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
<<<<<<< HEAD
  # get 'contact', to: 'pages#contact',  as: :contact
  get 'realisations', to: 'pages#realisation',  as: :realisations



match '/contact',     to: 'contacts#index',             via: 'get'
resources "contacts", only: [:index, :create]
=======
  get 'about', to: 'pages#apropos', as: :apropos
>>>>>>> 0d76548673c3f0cf1e18d2baee7216906d58341c

end
