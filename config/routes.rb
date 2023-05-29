Rails.application.routes.draw do
  resources :notes, only: [:index, :new, :create]
  root to: 'notes#index'
  
  get 'phrases', to: 'phrases#index'
end
