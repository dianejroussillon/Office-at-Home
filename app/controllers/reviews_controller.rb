class ReviewsController < ApplicationController
  def index
    @flat = Flat.find(params[:flat_id])
    @reviews = Review.all
  end

  def new
    @flat = Flat.find(params[:flat_id])
    @review = Review.new
  end

  def create
    @flat = Flat.find(params[:flat_id])
    @review = Review.new(review_params)
    @review.flat = @flat
    @review.save!
    # if @review.valid?
    #   @review.save
    #   redirect_to flat_reviews_path(params[:flat_id])
    # else
    #   render :new
    # end

  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to flat_reviews_path(params[:flat_id])
  end

  private

   def review_params
     params.require(:review).permit(:content, :rating)
   end

end
