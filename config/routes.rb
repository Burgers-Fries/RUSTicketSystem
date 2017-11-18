Rails.application.routes.draw do
  get 'login/index'

  resources :tickets

  root 'login#index'
end
