Rails.application.routes.draw do
  root 'pages#home'
  resources :events

  resources :users
  get 'signup' => 'users#new'

  resource :session
  get 'signin' => 'sessions#new'
end
