class Accounts::LocationsController < ApplicationController
  # before_action :authenticate_user!
  before_action :find_location, only: [:show, :edit, :update, :destroy]
  # after_action :verify_authorized
  # after_action :verify_policy_scoped

  def index
    @locations = Location.all
  end

  def show
  end

  def create
    @location = Location.new(location_params)
    # authorize @post
    if @location.save
      redirect_to locations_path
    else
     render :new
    end
  end

  def edit
  end

  def update
    # @post.update(post_params)
    # redirect_to account_posts_path
  end

  def destroy
    # @post.destroy
    # redirect_to account_posts_path
  end

  private

  def location_params
    params.require(:location).permit(:name, :address, :description)
  end

  def find_location
    @location = Location.find(params[:id])
  end

end