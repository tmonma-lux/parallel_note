Rails.application.routes.draw do
  resources :notes
  root to: 'notes#index'
  get 'search', to: 'notes#search'
  
  get 'phrases', to: 'phrases#index'

  get '*path', controller: 'application', action: 'redirect_on_404err' unless Rails.env.development?
end
