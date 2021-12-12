class CommentsController < ApplicationController
  before_action :require_login

  def index
    @comments = Comment.where('post_id = ?', params[:post_id])
    @post = Post.find(params[:post_id])
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def upvote
    comment = Comment.find(params[:id])
    user = User.find(session[:user_id])
    CommentLike.create(user: user, comment: comment)
    redirect_to(request.env['HTTP_REFERER'])
  end

  def downvote
    like = CommentLike.where('user_id = ?', session[:user_id]).first
    comment = like.comment
    like.delete
    redirect_to(request.env['HTTP_REFERER'])
  end

  def new
    unless params[:post_id]
      return
    end
    @comment = Comment.new(post_id: params[:post_id], user_id: session[:user_id])
  end
  
  def create
    comment = Comment.new(comment_params)
    return redirect_to new_post_comment_path(comment.post) unless comment.valid?
    comment.save
    redirect_to post_path(comment.post)
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :post_id, :content)
  end

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end
end
