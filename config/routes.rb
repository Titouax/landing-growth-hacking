Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/newsletter'

  root 'pages#home'
  get 'newsletter', to: 'pages#newsletter'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
