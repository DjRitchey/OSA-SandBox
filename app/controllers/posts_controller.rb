class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = Post.all
  end

  def new
    @user = current_user
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    else
      render new_post_path
    end
  end


private

  def post_params
    params.require(:post).permit(:user_id, :title, :subtitle, :content)
  end

end
