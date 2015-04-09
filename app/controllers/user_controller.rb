class UserController < ApplicationController
  def index
    @users = User.all
  end
  
  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :fname, :lname, :childfname, :childlname, :category)
  end
end
