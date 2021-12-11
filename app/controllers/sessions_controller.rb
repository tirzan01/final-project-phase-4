class SessionsController < ApplicationController
  def new
    require_logout
    flash.alert = 'username or password incorrect'
  end

  def create
    @user = User.find_by(user_name: params[:user_name])
    unless @user && @user.authenticate(params[:password])
      return redirect_to('/login'), notice: 'username or password incorrect'
    end
    @@errors = nil
    session[:user_id] = @user.id
    redirect_to(@user)
  end

  def destroy
    session.delete(:user_id)
  end

  private

  def require_logout
    return head(:forbidden) if session.include? :user_id
  end
end
