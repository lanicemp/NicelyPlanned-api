class Api::V1::SessionsController < ApplicationController

    def create 
        @user = User.find_by(email: params[:session][:email])

        if @user && @user.authenticate(params[:session][:password])
            session[:user_id] = @user.id
            render json: UserSerializer.new(@user).serializable_hash,
            loggedIn: true
            #adding serializable_hash and logged in remove the push error and allowed me to login when signed up and retrieve the data from the database.  
            # allows the current user to be populated in the front end.  before updating the line above current user was not populating in my redux state. 
        else 
            render json: {
                error: "Invalid Credentials"
            }
        end
    end 

    def get_current_user 
        if logged_in
            render json: UserSerializer.new(current_user).serializable_hash,
            loggedIn: true
                    
        else 
            render json: {
                error: "No one logged in"
            }
        end
    end

    def destroy
        session.clear
        render json: {
          notice: "successfully logged out"
        }, status: :ok
     end
    
    
end
