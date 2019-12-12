Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :todos
      resources :courses
      resources :platforms do
        resources :courses do 
          resources :todos
        end
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
