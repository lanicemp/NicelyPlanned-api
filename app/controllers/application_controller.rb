class ApplicationController < ActionController::API
    include ::ActionController::Cookies
 
  
        def current_user
            User.find(id: session[:user_id])
        end 
    

        def logged_in
            !!current_user
        end
    
    

end
