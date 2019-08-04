Rails.application.routes.draw do
  root 'pages#home'

  resources :users do
    resources :events do
      resources :attendees do 
        collection { post :import }
      end
      resources :tables
    end  
  end
  get 'signup' => 'users#new'

  resource :session
  get 'signin' => 'sessions#new'
end
