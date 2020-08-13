class SessionsController < ApplicationController

    def home 
        if session[:user_id]
            @user = User.find_or_create_by(id: session[:user_id])
        end 
    end 

    def new 
        @user = User.new
    end 

    def create 
        if request.env['omniauth.auth']
            @user = User.find_or_create_by(email: auth['info']['email']) do |user|
                user.username = auth['info']['username']
                user.email = auth['info']['email']
                user.password = auth['uid']
            end 

        @user.save 
        session[:user_id] = @user.id
        redirect_to '/profile_page'
        else 
        user = User.find_by(username: params[:user][:username])
        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id 
            redirect_to user_path(user)
        else 
            flash[:message] = "Incorrect Username and/or Password"
            redirect_to  "/login"
        end 
        end 
    end 

    def destroy 
        session.clear 
        redirect_to root_path
    end 

    private 

    def auth
        request.env['omniauth.auth']
    end
end
