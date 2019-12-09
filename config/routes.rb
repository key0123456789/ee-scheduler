Rails.application.routes.draw do
  root "wishes#index"
  resources :wishes
  
  resources :main, only: [:index]
  get 'test', to: 'main#test'

end
