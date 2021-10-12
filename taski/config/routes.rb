Rails.application.routes.draw do
  get 'contact', to: "pages#contact"
  get 'about', to: "pages#about"

  get "blog",to: redirect("https://github.com/brunogomes98")

  resources :projects

  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
