Rails.application.routes.draw do
  get 'tasks/show'
  get 'tasks/new'
  get 'tasks/edit'
  get 'contact', to: "pages#contact"
  get 'about', to: "pages#about"
  get 'error', to: "pages#error"

  get "blog",to: redirect("https://github.com/brunogomes98")

  resources :projects

  root 'pages#home'

  get "*path", to: redirect("/error")
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
