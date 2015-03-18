class Accounts::LocationsController < ApplicationController
  # before_action :authenticate_use@r!
  # after_action :verify_authorized
  # after_action :verify_policy_scoped

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
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to locations_path
  end

  private

  def location_params
    params.require(:location).permit(:name, :address, :description)
  end
end