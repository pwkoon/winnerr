class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:new, :create]

  def index
    @listings = Listing.all
  end

  def show
    @project = Project.new
    @review = Review.new(listing: @listing)
  end

  def new
    @listing = Listing.new
    @price = Price.new
    @listing.categories.build
  end

  def create
    @listing = Listing.new(params_listing)
    @price = Price.new(params_price)
    @listing.prices << @price
    @listing.user = @user

    if @listing.save
        redirect_to  listing_path(@listing)
    else
        render :new, status: :unprocessable_entity
    end
  end

  def edit

  end

  def update
    @price = @listing.prices.first
    if @listing.update(params_listing) && @price.update(params_price)
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
    params.require(:listing).permit(:title, :description, :photo, category_ids: [])
  end

  def params_price
    params.permit(:tier, :amount, :description)
  end

  def set_listing
    @listing = Listing.find(params[:id])
  end
end
