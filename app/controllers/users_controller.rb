class UsersController < ApplicationController
    before_action :redirect_if_not_logged_in
    skip_before_action :redirect_if_not_logged_in, only: [:new, :create]
    before_action :no_url_hacking, only: [:show, :edit, :update]


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
        @user = User.find_by_id(params[:id])
    end 

    def udpate 
        @user = User.find_by_id(params[:id])
        if @user.update(user_params)
            redirect_to user_path(@user)
        else 
            render :show
        end 
    end 

    private 

    def user_params 
        params.require(:user).permit(:username, :email, :password, :ages)
    end 

    def no_url_hacking
        redirect_to '/' unless current_user.id.to_s == params[:id]
      end
end
