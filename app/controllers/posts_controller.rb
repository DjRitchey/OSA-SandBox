class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = Post.all
  end

  def new
    @user = current_user
    @post = Post.new
    @categories = Category.all.map{|c| [c.tag, c.id]}

  end

  def create
    @post = Post.new(post_params)
    if @post.save
      binding.pry
      current_user.posts << @post
      redirect_to posts_path
    else
      render new_post_path
    end
  end


private

  def post_params
    params.require(:post).permit(:user_id, :title, :subtitle, :content, :category_id)
  end

end
