class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    
  end

  def create
    
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
  end

  private

  def post_params
    params.require(:posts).permit(:user, :content)
  end
end
