class Accounts::LocationsController < ApplicationController
  # before_action :authenticate_user!
  before_action :find_location, only: [:destroy]
  # after_action :verify_authorized
  # after_action :verify_policy_scoped

  def index
    @locations = Location.all
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