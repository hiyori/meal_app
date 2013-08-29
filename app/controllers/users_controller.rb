class UsersController < ApplicationController
  
  def new
    if signed_in? then redirect_to new_order_path end  
    @user=User.new
  end
  
  def create
    @user = User.find_or_create_by(user_params)
    if @user.save
      @user.send_email
      binding.pry
      flash[:success]="The email was sent"
      redirect_to root_path
    else
      render "new"
    end
  end
    
  private

  def user_params
    params.require(:user).permit(:email)
  end
  
end
