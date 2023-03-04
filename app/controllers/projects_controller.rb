class ProjectsController < ApplicationController
  before_action :set_listing, only: [:new, :create]

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(params_project)
    @project.listing = @listing
    @project.user = current_user
    if @project.save
        redirect_to project_path(@project)
    else
        render :new, status: :unprocessable_entity
    end
  end

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  private

  def set_listing
    @listing = Listing.find(params[:listing_id])
  end

  def params_project
  params.require(:project).permit(:listing_id)
  end
end
