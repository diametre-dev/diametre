class Accounts::PostsController < ApplicationController
  # before_action :authenticate_user!
  before_action :find_post, only: [:show, :update, :update_picture, :destroy]
  # after_action :verify_authorized
  # after_action :verify_policy_scoped
  respond_to :html, :json

  def show
  end

  def create
    @post = Post.new(post_params)
    # authorize @post
    if @post.save
      # flash[:notice] = "Votre article a bien été sauvegardé."
      redirect_to account_path
    else
      # flash[:notice] = "Une erreur est survenue. Votre article n'a pas été sauvegardé."
      redirect_to account_path
    end
  end

  def update
    @post.update(post_params)
    respond_with @post
  end

  def update_picture
    @post.update(post_picture_param)
    redirect_to account_post_path(@post)
  end

  def destroy
    @post.destroy
    redirect_to account_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :subtitle, :description, :picture, :author)
  end

  def post_picture_param
    params.require(:post).permit(:picture)
  end

  def find_post
    @post = Post.find(params[:id])
  end

end