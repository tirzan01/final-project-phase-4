class CommmentsController < ApplicationController
  def index
    
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
    params.require(:comments).permit(:user, :post, :content)
  end
end
