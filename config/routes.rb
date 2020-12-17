Rails.application.routes.draw do
  root to: "calculations#new"
  resources :calculations, only: [:new, :create]
end