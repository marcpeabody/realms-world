Rails.application.routes.draw do
  root "static#index"
  resources :games, only: [:index, :new, :show, :create] do
    resources :decisions, only: [:create], module: :games
  end
  mount ActionCable.server => '/cable'
end
