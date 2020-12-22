Rails.application.routes.draw do
  root "calculations#index"
  resources :calculations, only: [:index, :new, :create]
end