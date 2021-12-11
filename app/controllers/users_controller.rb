class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    require_logout
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    return render :new unless @user.valid?

    @user.save
    session[:user_id] = @user.id
    redirect_to(@user)
  end

  def edit
    require_login
  end

  def update
    
  end

  def destroy
    # @user = User.find(params[:id])
    # destry_user_posts(@user)
    # destroy_user_comments(@user)
    # destroy_user_post_likes(@user)
    # destroy_user_comment_replies(@user)
    # destroy_user_comment_likes(@user)
  end

  private

  def user_params
    params.require(:user).permit(:user_name, :first_name, :last_name, :email, :password, :password_confirmation)
  end

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end

  def require_logout
    return head(:forbidden) if session.include? :user_id
  end
end
