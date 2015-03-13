class ApplicationController < ActionController::Base
  include Pundit

  protect_from_forgery with: :exception


  # before_action :authenticate_user!, unless: :pages_controller_or_posts_controller?
  # faire un only plutôt qu'un unless, et faire un only sur le post controller du account controller

  # after_action :verify_authorized, except:  :index, unless: :devise_or_pages_controller_or_posts_controller_or_admin?
  # after_action :verify_policy_scoped, only: :index, unless: :devise_or_pages_controller_or_posts_controller_or_admin?

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def devise_or_pages_controller_or_posts_controller_or_admin?
    devise_controller? || pages_controller_or_posts_controller? || params[:controller] =~ /^admin/
  end

  def pages_controller_or_posts_controller_or?
    controller_name == "pages" || controller_name == "posts"  # Brought by the `high_voltage` gem
  end

  def user_not_authorized
    flash[:error] = I18n.t('controllers.application.user_not_authorized', default: "You can't access this page.")
    redirect_to(root_path)
  end
end
