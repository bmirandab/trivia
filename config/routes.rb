Rails.application.routes.draw do
  

  resources :categories
  devise_for :users
  resources :games do
    resources :user_games, only: [:create]
    resources :categories do
      resources :questions do
        resources :answers, except: [:show]
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
