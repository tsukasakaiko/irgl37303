Rails.application.routes.draw do
  resources :irgls, only: [:index, :new]
  root to: 'irgls#index'

end
