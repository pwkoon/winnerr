class PricesController < ApplicationController
  before_action :params_price, only: [:edit, :update, :destroy]
  before_action :set_listing, only: [:new, :create, :edit]

  def new
    @price = Price.new
  end

  def create
    @price = Price.new(params_price)
    @price.listing = @listing
    if @price.save!
        redirect_to listing_path(@listing)
    else
        render :new, status: :unprocessable_entity
    end
  end

  def edit
    @price = Price.find(params[:price_id])
    render :edit 
  end

  def update
    @price.update(params_price)
    if @price.update
      redirect_to listing_path(@listing)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_listing
    @listing = Listing.find(params[:listing_id])
  end

  def params_price
  params.require(:price).permit(:tier, :amount, :description)
  end
end
