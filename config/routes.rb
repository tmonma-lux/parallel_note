Rails.application.routes.draw do
  get 'notes/index'
  root to: 'notes#index'
  
  get 'phrases', to: 'phrases#index'
end
