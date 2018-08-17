Rails.application.routes.draw do
  get 'pages/home'

  root 'pages#home'
  get "hometwo", to: "pages#hometwo"
  get "homethree", to: "pages#hometree"
  get "newsletter", to: "pages#newsletter"

  # resources :pages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
