Rails.application.routes.draw do
  root to: 'notes#index'
  resources :notes do
    collection do
      get :search
    end
  end

  resources :phrases, only: [:index] do
    collection do
      get :search
    end
  end

  get '/phrase_quiz', to: 'quizzes#show'

  get '*path', controller: 'application', action: 'redirect_on_404err' unless Rails.env.development?
end
