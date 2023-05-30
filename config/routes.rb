Rails.application.routes.draw do
  resources :notes, only: [:index, :show, :new, :create, :edit, :update]
  root to: 'notes#index'
  
  get 'phrases', to: 'phrases#index'
end
