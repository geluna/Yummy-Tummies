class SchoolsController < ApplicationController
  before_action :set_school, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @schools = School.all
    @users = School.where(id: params[:id]) 
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude      
    end
    respond_with(@schools)
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
