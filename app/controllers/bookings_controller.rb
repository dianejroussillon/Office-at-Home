class BookingsController < ApplicationController
  before_action :set_flat

  def index
    @bookings = policy_scope(Booking).where(flat: @flat)
  end

  # def show
  #   @booking = Booking.find(params[:id])
  # end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.flat = @flat
    @booking.user = current_user
    authorize @booking
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
    authorize @booking
    redirect_to flat_bookings_path(@flat)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_flat
    @flat = Flat.find(params[:flat_id])
    @price = @flat.price_per_day
  end
end
