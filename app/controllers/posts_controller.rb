class PostsController < ApplicationController
  before_action :require_login

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    redirect_to user_post_path(@post.user, @post) unless params[:user_id]
  end

  def post_like
    @post = Post.find(params[:id])
    @user = User.find(session[:user_id])
    PostLike.create(user: @user, post: @post)
    redirect_to user_post_path(@user, @post)
  end

  def remove_post_like
    post = Post.find(params[:id])
    user = User.find(session[:user_id])
    like = PostLike.where('post_id = ? AND user_id = ?', post.id, user.id).first
    post = like.post
    like.delete
    redirect_to user_post_path(user, post)
  end

  def new
    require_login
    return redirect_to new_user_post_path(session[:user_id]) unless "#{session[:user_id]}" == params[:user_id]
    @post = Post.new(user: User.find(session[:user_id]))
  end

  def create
    post = Post.new(post_params)
    return redirect_to new_user_post_path(session[:user_id]) unless post.valid?
    post.save
    redirect_to user_post_path(post.user, post)
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
  end

  private

  def post_params
    params.require(:post).permit(:user_id, :content)
  end

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end
end
