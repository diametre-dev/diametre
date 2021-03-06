class AccountsController < ApplicationController
  def show
    @location = Location.new
    @locations = Location.all
    @post = Post.new
    @posts = Post.all
  end

  # def edit
  # end

  # def update
  #   current_user.update(account_params)
  #   redirect_to account_path
  # end

  private

  def account_params
    params.require(:user).permit(:name, :email, :picture)
  end
end