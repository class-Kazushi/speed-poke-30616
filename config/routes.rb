Rails.application.routes.draw do
  root to: "calculations#index"
  resources :calculations, only: [:index, :new, :create]
end