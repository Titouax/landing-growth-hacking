Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/newsletter'

  root 'pages#home'
<<<<<<< HEAD
  get 'newsletter', to: 'pages#newsletter'
=======
  get 'pages/hometwo'
  get 'pages/hometree'
  # resources :pages
>>>>>>> master
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
