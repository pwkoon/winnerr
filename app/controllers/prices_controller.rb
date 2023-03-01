class PricesController < ApplicationController
  def new
    @price = Price.new
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
        redirect_to listing_path(@listing)
    else
        render :new, status: :unprocessable_entity
    end
  end
  
end
