class ProductsController < ApplicationController
  def index
  end
  def new
  	@post = Post.new
  end
  def create
 	 @post = Post.new(post_params(:post)) 
  if @post.save
  	redirect_to root_path
  end
  end
  private 
  def post_params
  params.require(:post).permit(:shopname,:title,:description)
end
end
