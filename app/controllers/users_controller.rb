class UsersController < ApplicationController
  before_filter :authenticate_user!
  def index
    @users = User.where(id:current_user.id)  
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude      
    end
  end
  
  def new
    @student = Student.new
  end

  def show
  @users = User.where(id:current_user.id)
      @hash = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
  end
  end
  
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to users_url}
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
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
    :students_attributes => [:fname, :lname, :_destroy]
    )
  end
end
