class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  def index
    @posts = Post.all 
  end
  
  def create
    @post=current_user.posts.create(post_params)
    if @post.valid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  def new
    @post = Post.new(params[:id])
    
  end


private
  def post_params
    params.require (:post).permit(:user_id,:photo, :description)
  end
end
