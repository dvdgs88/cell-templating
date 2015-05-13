Rails.application.routes.draw do
  root 'pages#index'

  resources :pages, only: ['index', 'show']
end
