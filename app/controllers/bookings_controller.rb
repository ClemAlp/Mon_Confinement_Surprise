class BookingsController < ApplicationController

  def index
    @bookings = Booking.all(params[:user_id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @user = User.find(params[:id])
    @confinement = Confinement.find(params[:id])
    @booking = Booking.new(user_id: @user, confinement_id: @confinement)
    @booking.save!
  end

  def destroy
  end

end
