CourseProject::Application.routes.draw do
  resources :posts, except: [:update, :destroy] do
    resources :comments, only: [:create]
    resources :votes, only: [:up, :down]

    match 'votes/up' => 'votes#up'
    match 'votes/down' => 'votes#down'

  end

  resources :users

  get 'register', to: "users#new", as: "register"
  get 'login', to: "sessions#new", as: "login"
  post 'login', to: "sessions#create", as: "login"
  get 'logout', to: "sessions#destroy", as: "logout"

  root to: "main#index"
end
