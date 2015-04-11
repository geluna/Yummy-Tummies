class UserController < ApplicationController
  def index
    @users = User.all
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "Account updated"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
end
  
  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :fname, :lname, :childfname, :childlname, :category)
  end
end
