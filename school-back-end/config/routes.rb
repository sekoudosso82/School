Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :students
    end
  end
  namespace :api do
    namespace :v1 do
      resources :classes
    end
  end
  namespace :api do
    namespace :v1 do
      resources :parents
    end
  end
  namespace :api do
    namespace :v1 do
      resources :professors
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
