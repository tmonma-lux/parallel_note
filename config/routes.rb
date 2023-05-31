Rails.application.routes.draw do
  resources :notes
  root to: 'notes#index'
  
  get 'phrases', to: 'phrases#index'
end
