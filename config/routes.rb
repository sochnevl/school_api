Rails.application.routes.draw do
  resources :students, only: %i[create destroy]

  resources :schools, only: [] do # тут не уверен
    resources :class_groups, path: 'classes', only: :index do
      resources :students, only: :index
    end
  end
end
