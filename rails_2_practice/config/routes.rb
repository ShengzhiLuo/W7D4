Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show, :index]do
    resources :goals, only: [:create]
  end
  resource :session, only: [:new, :create, :destroy] 
  resources :goals, only: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
