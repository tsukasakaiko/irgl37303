Rails.application.routes.draw do
  devise_for :users
  resources :irgls
  root to: 'irgls#index'

end
