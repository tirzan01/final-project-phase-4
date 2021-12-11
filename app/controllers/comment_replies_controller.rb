class CommentRepliesController < ApplicationController
  def index
    @comment = Comment.find(params[:comment_id])
    @replies = CommentReply.where('comment_id = ?', @comment.id)
  end

  def new
    
  end

  def create
    comment = Comment.new(post_params)
    return redirect_to new_post_comment_path(comment.post) unless comment.valid?
    comment.save
    redirect_to post_path(comment.post)
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
