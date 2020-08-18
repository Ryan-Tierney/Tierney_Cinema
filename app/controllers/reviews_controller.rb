class ReviewsController < ApplicationController
    before_action :redirect_if_not_logged_in
    
    def index 
        @movie = Movie.find_by(id: params[:movie_id])
        if params[:movie_id] && Movie.find_by_id(params[:movie_id])
            if @movie
                @reviews = @movie.reviews
            end 
        else 
            @reviews = Review.all 
        end 
    end 

    def new 
        if params[:movie_id] && @movie = @movie = Movie.find_by(id: params[:movie_id])
            @review = @movie.reviews.build
        else 
            @error = "This Movie Doesn't Exist" if params[:movie_id]
        @review = Review.new  
        end 
    end 

    def create 
        @movie = Movie.find_by(id: params[:movie_id])
        @user = User.find_by(id: params[:user_id], username: params[:username])
        @review = Review.new(
        :title => review_params[:title], 
        :content => review_params[:content], 
        :movie_id => params[:movie_id],
        :user_id => current_user.id)
        if @review.save 
            redirect_to movie_path(@review.movie)
        else 
            render :new  
        end 
    end 
    
    private 

    def review_params 
        params.require(:review).permit(:title, :content, :movie_id)
    end 
end
