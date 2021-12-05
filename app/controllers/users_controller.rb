class UsersController < ApplicationController
  def index
    @users = User.all
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

  def user_params
    params.require(:posts).permit(:user_name, :first_name, :last_name, :email, :password, :password_confirmation)
  end
end
