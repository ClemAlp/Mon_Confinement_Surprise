class BookingsController < ApplicationController

  def index
    @bookings = Booking.all(params[:user_id])
  end

  def new
    @confinement = Confinement.find(params[:confinement_id])
    @booking = Booking.new
    @user = current_user
  end
  def create
    @user = User.find(params[:id])
    @confinement = Confinement.find(params[:id])
    @booking = Booking.new(user_id: @user, confinement_id: @confinement)
    @booking.save!
    redirect_to confinement_bookings_path(@booking)

  end

  def destroy
    @booking.destroy
    redirect_to confinements_path
  end
end
