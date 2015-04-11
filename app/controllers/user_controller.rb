class UserController < ApplicationController
  def index
    #@users = User.all

    if params[:search].present?
    	@users = User.near(params[:search], 50, :order => :distance)
  	else
    	@users = User.all
  	end
  end

  def show
  	
  end
  
  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :fname, :lname, :childfname, :childlname, :category)
  end
end
