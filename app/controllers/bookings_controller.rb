class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show

  end

  def new
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new
  end

  def create
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new(booking_params)
    @booking.flat = @flat

    @booking.user = current_user
    if @booking.save!
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end
  def edit

  end

  def update

  end

  def destroy

  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
