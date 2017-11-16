Rails.application.routes.draw do
  get 'login/index'

  resources :tickets do
    delete :destroy
  end

  root 'login#index'
end
