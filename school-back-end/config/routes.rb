Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :classe_courses
    end
  end
  namespace :api do
    namespace :v1 do
      resources :student_courses
    end
  end
  namespace :api do
    namespace :v1 do
      resources :professor_classes
    end
  end
  namespace :api do
    namespace :v1 do
      resources :professor_students
    end
  end
  namespace :api do
    namespace :v1 do
      resources :parent_students
    end
  end
  namespace :api do
    namespace :v1 do
      resources :grades
    end
  end
  namespace :api do
    namespace :v1 do
      resources :courses
    end
  end
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

  post '/student_signup', to: "students#create"
  post "/login", to: "auth#login"
  get '/auto_login', to: 'auth#auto_login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
