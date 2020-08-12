class RentalsController < ApplicationController
  before_action :no_url_hacking, only: [:index]

  def index
    if params[:user_id]
      @user = User.find_by(id: params[:user_id])
      if @user.nil?
        redirect_to "/"
      else
        @checked_out = @user.rentals.checked_out
        @past_rentals = @user.rentals.past_rentals
      end
    else
      redirect_to "/"
    end
  end

  def create
    @rental = Rental.create(
          :user_id => params[:user_id],
          :movie_id => params[:movie_id]
        )
    @message = @rental.rent_movie
    redirect_to user_rentals_path(@rental.user), :notice => @message
  end

  def update
    @rental = Rental.find_by(id: params[:rental_id])
    @rental.update(:available => "returned")
    @rental.save

    @message = "Thank you for returning #{@rental.movie.title}."
    redirect_to user_rentals_path(@rental.user), :notice => @message
  end

  private

  def no_url_hacking
    redirect_to '/' unless current_user.id.to_s == params[:user_id]
  end
end