class ApplicationController < ActionController::API
helpers do 
    def current_user
        User.first
    end 
end 

end
