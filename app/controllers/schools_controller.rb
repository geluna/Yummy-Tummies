class SchoolsController < ApplicationController
  before_action :set_school, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    if current_user.admin?
      @students = Student.all
    elseif current_user.institution?
      @students = Student.all
    else
      @students = Student.where(user_id:current_user.id)
      @user = User.all
    end
  end

  def show
    @students = Student.where(school_id: params[:id])
    respond_with(@school)
  end

  def new
    @school = School.new
    respond_with(@school)
  end

  def edit
  end

  def create
    @school = School.new(school_params)
    @school.save
    respond_with(@school)
  end

  def update
    @school.update(school_params)
    respond_with(@school)
  end

  def destroy
    @school.destroy
    respond_with(@school)
  end

  private
    def set_school
      @school = School.find(params[:id])
    end

    def school_params
      params.require(:school).permit(:name, :address, :frachise_id)
    end
end
