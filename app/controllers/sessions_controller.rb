class SessionsController < ApplicationController

    def home 
        if session[:user_id]
            @user = User.find_or_create_by(id: session[:user_id])
        end 
    end 

    def new 
    end 

    def create 
        user = User.find_by(username: params[:user][:username])
        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id 
            redirect_to user_path(user)
        else 
            flash[:message] = "Incorrect Username and/or Password"
            redirect_to  "/login"
        end 
    end 

    def destroy 
        session.clear 
        redirect_to root_path
    end 
end
