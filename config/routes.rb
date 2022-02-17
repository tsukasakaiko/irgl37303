Rails.application.routes.draw do
  resources :irgls
  root to: 'irgls#index'

end
