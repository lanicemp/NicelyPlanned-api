Rails.application.routes.draw do
 post "/api/vl/login", to: "api/v1/sessions#create" 
  
  namespace :api do 
    namespace :v1 do 
     resources :users do
     resources :meetings, only: [:index, :show, :create, :destroy, :update]
     resources :my_meetings, only: [:index, :show, :create, :destroy, :update]
    end 
  end 
  end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
