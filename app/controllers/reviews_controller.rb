class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @listing = Listing.find(params[:listing_id])
    @review.listing = @listing
    if @review.save
      redirect_to listing_path(@listing)
    else
      render 'listing', status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to listing_path(@review.listing)
  end

  def show
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
