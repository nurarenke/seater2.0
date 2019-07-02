Rails.application.routes.draw do
  root "events#index"
  resources :events

  resources :users
  get 'signup' => 'users#new'

  resource :session
end
