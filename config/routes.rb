Rails.application.routes.draw do
  get 'notes/index'
  root to: 'notes#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
