class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    return render :new unless @user.valid?

    @user.save
    redirect_to(@user)
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
  end

  private

  def user_params
    params.require(:user).permit(:user_name, :first_name, :last_name, :email, :password, :password_confirmation)
  end
end
