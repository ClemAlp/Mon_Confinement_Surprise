class BookingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @bookings = Booking.all(params[:user])
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @confinement = Confinement.find(params[:confinement_id])
    @user = current_user
    @booking = Booking.new(user_id: @user, confinement_id: @confinement)
  end

  def create
    @user = current_user
    @confinement = Confinement.find(params[:confinement_id])
    @booking = Booking.new(confinement: @confinement, user: @user)
    @booking.save!
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking.destroy
    redirect_to confinements_path
  end
end
