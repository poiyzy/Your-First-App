CourseProject::Application.routes.draw do
  root to: "main#index"

  resources :posts, except: [:update, :destroy] do
    resources :comments, only: [:create]
  end

end
