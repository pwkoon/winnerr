class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    
  end

  # def new
  #   @category = Category.new
  # end

  # def create
  #   @category = Category.new(params_category)
  #   if @category.save
  #     redirect_to category_path(@category)
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end

  # private

  # def params_category
  #   params.require(:category).permit(:name, :description)
  # end
end
