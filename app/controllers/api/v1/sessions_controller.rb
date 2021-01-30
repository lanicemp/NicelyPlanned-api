class Api::V1::SessionsController < ApplicationController

    def create 
        @user = User.find_by(email: params[:session][:email])

        if @user && @user.authenticate(params[:session][:password])
            session[:user_id] = @user.id
            render json: UserSerializer.new(@user), status: :ok
            # allows the current user to be populated in the front end.  before updating the line above current user was not populating in my redux state. 
        else 
            render json: {
                error: "Invalid Credentials"
            }
        end
    end 

    def get_current_user 
        if logged_in?
            render json: UserSerializer.new(current_user)
        else 
            render json: {
                notice: "No one logged in"
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
