class UsersController < ApplicationController

    def new 
        @user = User.new 
    end 

    def create 
        @user = User.new(user_params)
        if @user.save 
            session[:user_id] = @user.id
            redirect_to @user  
        else 
            render :new 
        end 
    end 

    def show 
        redirect_if_not_logged_in
        @user = User.find_by_id(params[:id])
        redirect_to '/' if !@user
    end 

    def edit 
        @user = User.find(params[:id])
    end 

    def udpate 
        @user = User.find(params[:id])
        @user.update(money: params[:money])
        if @user.save 
            redirect_to @user 
        else 
            render :show
        end 
    end 

    private 

    def user_params 
        params.permit(:username, :email, :password, :age, :money)
    end 
end
