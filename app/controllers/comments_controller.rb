class CommentsController < ApplicationController
  def index
    # post = Post.find(params[:post_id])
    @comments = Comment.where('post_id = ?', params[:post_id])
  end

  def show
    @comment = Comment.find(params[:id])
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
    params.require(:comment).permit(:user, :post, :content)
  end
end
