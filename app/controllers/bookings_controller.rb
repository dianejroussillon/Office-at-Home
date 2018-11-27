class BookingsController < ApplicationController
  before_action :set_flat

  def index
    @bookings = Booking.all
  end

  # def show
  #   @booking = Booking.find(params[:id])
  # end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.flat = @flat

    @booking.user = current_user
    if @booking.save!
      redirect_to flat_bookings_path(@flat)
    else
      render :new
    end
  end
  # def edit

  # end

  # # def update
  # end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to flat_bookings_path(@flat)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_flat
    @flat = Flat.find(params[:flat_id])
  end
end
