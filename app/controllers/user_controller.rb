class UserController < ApplicationController
  def index
    #@users = User.all

    if params[:search].present?
    	@users = User.near(params[:search], 50, :order => :distance)
  	else
    	@users = User.all
  	end

 
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
          
end
  	
  end

  def show
      @hash = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      end
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
    params.require(:user).permit(:email, :password, :password_confirmation, :fname, :lname, :childfname, :childlname, :category,
    :students_attributes => [:fname, :lanme, :_destroy]
    )
  end
end
