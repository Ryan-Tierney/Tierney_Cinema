class MoviesController < ApplicationController

    def index
      if logged_in?
        if !params[:rating].blank?
          @movies = Movie.rating_filter(params[:rating])
        else
          @movies = Movie.all
        end
      else
        redirect_to '/login'
      end 
    end

    def show 
      if logged_in?
        @movie = Movie.find_by_id(params[:id])
      else
        redirect_to '/login'
      end 
    end 

end
