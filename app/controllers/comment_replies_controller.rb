class CommentRepliesController < ApplicationController
  def index
    @comment = Comment.find(params[:comment_id])
    @replies = CommentReply.where('comment_id = ?', @comment.id)
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
    params.require(:comment_reply).permit(:user, :comment, :content)
  end
end
