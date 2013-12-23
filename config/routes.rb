Cinema::Application.routes.draw do
  match 'auth/:provider/callback', to: 'sessions#crreate'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'
  
  resources :movies do
    resources :reviews
  end
  root to: 'movies#index'
end
