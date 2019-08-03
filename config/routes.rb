Rails.application.routes.draw do
  resources :tables
  root 'pages#home'

  resources :users do
    resources :events
  end
  get 'signup' => 'users#new'

  resource :session
  get 'signin' => 'sessions#new'
end
