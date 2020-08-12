class ReviewsController < ApplicationController
    before_action :redirect_if_not_logged_in

    def new 
        @movie = Movie.find_by(id: params[:movie_id])
        @review = Review.new  
    end 

    def create 
        @movie = Movie.find_by(id: params[:movie_id])
        @review = Review.create(
        :title => review_params[:title], 
        :content => review_params[:content], 
        :movie_id => params[:movie_id])
        if @review.save 
            redirect_to movie_path(@review.movie)
        else 
            render :new 
        end 
    end 
    
    private 

    def review_params 
        params.require(:review).permit(:title, :content)
    end 
end
