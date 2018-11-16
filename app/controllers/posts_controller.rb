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
    binding.pry
    if @post.save
      binding.pry
      current_user.posts << @post
      redirect_to posts_path
    else
      render new_post_path
    end
  end

  def edit
    @user = current_user
    @post = Post.find_by(id: params[:id])

  end

  def update
    @user = current_user
    @post = Post.find_by(id: params[:id])

    if @post.update(post_params)
      redirect_to posts_path
    else
      render edit_post_path(@post)
    end

  end


private

  def post_params
    params.require(:post).permit(:user_id, :title, :subtitle, :content, :category_ids)
  end

end
