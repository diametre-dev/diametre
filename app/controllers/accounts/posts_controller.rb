class Accounts::PostsController < ApplicationController
  # before_action :authenticate_user!
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  # after_action :verify_authorized
  # after_action :verify_policy_scoped

  def show
  end

  def create
    @post = Post.new(post_params)
    # authorize @post
    if @post.save
      redirect_to account_posts_path
    else
     render :new
    end
  end

  def edit
  end

  def update
    @post.update(post_params)
    redirect_to account_posts_path
  end

  def destroy
    @post.destroy
    redirect_to account_posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :subtitle, :description, :picture, :author)
  end

  def find_post
    @post = Post.find(params[:id])
  end

end