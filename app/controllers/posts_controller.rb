class PostsController < ApplicationController
  def index
    @posts = Post.all 
  end
  
  def create
      @post = Post.find(params[:id])
      @post.create(post_params)
      redirect_to root_path
  end
  def new
    @post = Post.new(params[:id])
    
  end


private
  def post_params
    params.require (:posts).permit(:photo, :description)
  end
end
