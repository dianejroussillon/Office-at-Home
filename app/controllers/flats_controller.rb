class FlatsController < ApplicationController
  def index
    @flats = policy_scope(Flat)
    # @flats = Flat.where.not(latitude: nil, longitude: nil)
    # @markers = @flats.map do |flat|
    #   {
    #     lng: flat.longitude,
    #     lat: flat.latitude,
    #     infoWindow: render_to_string(partial: "<info></info>window", locals: { flat: flat })
    #   }
    #   end
  end

  def show
    @flat = Flat.find(params[:id])
    authorize @flat
  end

  def new
    @flat = Flat.new
    authorize @flat
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user = current_user
    authorize @flat
    if @flat.valid?
      @flat.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def edit
    @flat = Flat.find(params[:id])
    authorize @flat
  end

  def update
    @flat = Flat.find(params[:id])
    @flat.update(flat_params)
    authorize @flat
    redirect_to flats_path(@flat)
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    authorize @flat
    redirect_to flats_path
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_day, :photo)
  end
end
