CourseProject::Application.routes.draw do
  root to: "main#index"

  resources :posts, except: [:update, :destroy] do
    resources :comments, only: [:create]

    member do
      get 'up'
      get 'down'
    end
  end

end
