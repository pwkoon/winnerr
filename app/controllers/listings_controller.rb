class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:new, :create]

  def index
    @listings = Listing.all
  end

  def show
  end

  def new
    @listing = Listing.new
    @listing.categories.build
  end

  def create
    @listing = Listing.new(params_listing)
    @listing.user = @user
    if @listing.save!
        redirect_to  new_listing_price_path(@listing)
    else
        render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @listing.update(params_listing)
      redirect_to listing_path(@listing)
  else
      render :edit, status: :unprocessable_entity
  end
  end

  def destroy
    @listing.destroy
    redirect_to listings_path, status: :see_other, alert: "Listing was deleted successfully"
  end

  private

  def set_user
    @user = current_user
  end

  def params_listing
    params.require(:listing).permit(:title, :description, :photo, category_ids: [] )
  end

  def set_listing
    @listing = Listing.find(params[:id])
  end
end
