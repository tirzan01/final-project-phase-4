class CommentRepliesController < ApplicationController
  def index
    @comment = Comment.find(params[:comment_id])
    @replies = CommentReply.where('comment_id = ?', @comment.id)
  end

  def new
    @reply = CommentReply.new
  end

  def create
    reply = CommentReply.new(reply_params)
    return redirect_to comment_path(reply.comment) unless reply.valid?
    reply.save
    redirect_to comment_path(reply.comment)
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
  end

  private

  def reply_params
    params.require(:comment_reply).permit(:user_id, :comment_id, :content)
  end
end
