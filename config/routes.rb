Rails.application.routes.draw do
  resources :restaurants, except: [:edit, :update, :destroy] do
    resources :reviews, only: [:index, :new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
