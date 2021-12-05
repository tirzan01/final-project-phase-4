class CommentRepliesController < ApplicationController
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
    params.require(:comment_replies).permit(:user, :comment, :content)
  end
end
