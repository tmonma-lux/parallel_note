Rails.application.routes.draw do
  root to: 'notes#index'
  resources :notes do
    collection do
      get :search
      get :fetch_tag_suggestions, defaults: { format: 'json' }
    end
    member do
      get :fetch_tag_suggestions, defaults: { format: 'json' }
    end
  end

  resources :phrases, only: [:index] do
    collection do
      get :search
    end
  end

  get '/phrase_quizzes', to: 'phrase_quizzes#index'

  resources :tags, only: [:index, :destroy] do
    collection do
      get :search
    end
  end

  get '*path', controller: 'application', action: 'redirect_on_404error' unless Rails.env.development?
end
