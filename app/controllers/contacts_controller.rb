class ContactsController < ApplicationController
  def create
    @contact = Contact.new(contact_params)
    # authorize @post
    if @contact.save
      flash[:alert] = "Nous reviendrons vers vous très bientôt!"
      redirect_to page_path('contact')
    else
      flash[:alert] = "Une erreur est survenue, merci de réessayer plus tard."
      redirect_to page_path('contact')
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:username, :email, :description)
  end
end
