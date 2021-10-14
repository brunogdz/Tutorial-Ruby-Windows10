Rails.application.routes.draw do
  devise_for :users
  # get 'tasks/show'
  # get 'tasks/new'
  # get 'tasks/edit'
  # Podemos fazer dessa maneira
  # resources :tasks, except: [:index]
  # Só que como queremos 
  # .com/projects/4/tasks/2 e nao .com/tasks/2 vamos fazer assim

  get 'contact', to: "pages#contact"
  get 'about', to: "pages#about"
  get 'error', to: "pages#error"

  get "blog",to: redirect("https://github.com/brunogomes98")

  resources :projects do
    resources :tasks, except: [:index], controller: 'projects/tasks'
  end

  root 'pages#home'

  get "*path", to: redirect("/error")
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
