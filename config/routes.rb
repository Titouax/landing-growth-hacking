Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/newsletter'
  get 'pages/newsletter'
  get 'pages/home'
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
