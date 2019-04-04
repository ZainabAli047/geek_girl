Rails.application.routes.draw do
  root 'mainprofiles#index'

  resources :mainprofiles, only: [:index, :create]

  resources :blogs

  resources :post, only: [:index, :new, :create]

  resources :comments

end
