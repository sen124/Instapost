class PostsController < ApplicationController
  def index
    @posts = Post.all 
  end
  
  def create
      @post = Post.find(params[:id])
      @post.create(post_params)
      redirect_to root_path
  end
  
      
end
