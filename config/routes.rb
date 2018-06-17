Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'

  resources :users, only: [:index] do
    resources :books, only: [:index] do
      get 'refresh'
    end
  end
end
