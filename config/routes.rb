Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/hometwo'
  get 'pages/hometree'

  root 'pages#home'
  # resources :pages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
