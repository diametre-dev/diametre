class SubscribersController < ApplicationController

  def create
    @subscriber = Subscriber.new(subscriber_param)
    # authorize @post
    if @subscriber.save
      flash[:alert] = "Merci d'avoir souscrit à notre newsletter!"
      redirect_to root_path
    else
      flash[:alert] = "Une erreur est survenue. Veuillez vérifier votre email!"
      redirect_to root_path
    end
  end

  private

  def subscriber_param
    params.require(:subscriber).permit(:email)
  end
end