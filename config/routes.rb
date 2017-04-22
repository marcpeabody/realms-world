Rails.application.routes.draw do
  root "static#index"
  resource :games, only: [:show]
  mount ActionCable.server => '/cable'
end
