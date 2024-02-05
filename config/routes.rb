Rails.application.routes.draw do
  resources :students, only: [:create, :destroy, :index]

  resources :schools, only: [] do # тут не уверен
    resources :school_classes, path: 'classes', only: [:index] do
      resources :students, only: [:index]
    end
  end
end
