class Accounts::LocationsController < ApplicationController
  # before_action :authenticate_user!
  # before_action :find_post, only: [:show, :edit, :update, :destroy]
  # after_action :verify_authorized
  # after_action :verify_policy_scoped

  def index
    # # dans la view current_user.posts.each
    # # authorize Post
    # @posts = Post.all
  end

  def show
  end


  def new
    # @post = Post.new()
  end

  def create
    # @post = Post.new(post_params)
    # # authorize @post
    # if @post.save
    #   redirect_to account_post_path(@post)
    # else
    #  render :new
    # end
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
    # params.require(:post).permit(:title, :subtitle, :description, :picture, :author)
  end

  def find_location
    # @post = Post.find(params[:id])
  end

end