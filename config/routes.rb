Rails.application.routes.draw do
  resources :notes
  root to: 'notes#index'
  
  get 'phrases', to: 'phrases#index'

  get '*path', controller: 'application', action: 'redirect_on_404' unless Rails.env.development?
end
