class PostLikesController < ApplicationController
  before_action :require_login

  def create
    like = PostLike.create(User.find(session[:user_id], post))
    redirect_to(post_path(post))
  end

  def destroy
    
  end

  private

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end
end
