Rails.application.routes.draw do
 
  
  namespace :api do 
    namespace :v1 do 
     resources :users,only: [:index, :create, :destroy, :update] 
     resources :meetings, only: [:index, :create, :destroy, :update]
     resources :my_meetings, only: [:index, :create, :destroy, :update]
    end 
  end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
