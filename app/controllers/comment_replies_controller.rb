class CommentRepliesController < ApplicationController
  def index
    @replies = CommentReply.where('comment_id = ?', params[:comment_id])
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
    params.require(:comment_replies).permit(:user, :comment, :content)
  end
end
