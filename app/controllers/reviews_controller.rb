  class ReviewsController < ApplicationController
  def index
    @reviews = policy_scope(Review).where(booking_id: params[:booking_id])
  end

  def new
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
    authorize @review
  end

  def create
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    authorize @review
    if @review.valid?
      @review.save
      redirect_to flat_bookings_path(@flat)
    else
      render :new
    end
  end

  private

   def review_params
     params.require(:review).permit(:content, :rating)
   end
end
