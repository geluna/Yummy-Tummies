class SchoolsController < ApplicationController
  before_action :set_school, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index

    if current_user.admin?
      @schools = School.all

      @users = School.where(id: params[:id]) 
      @hash = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude      
    
      #@schools = School.pending
    else
      @schools = School.approved
      
      @users = School.where(id: params[:id]) 
      @hash = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude      
    
    end
  end

  def approve
  end

  def process_approve
   
    @flag = School.find_by(params[:id])
    
    respond_to do |format|
      if @flag.school_approve == false
        @flag.update_attributes(school_approve: true)
        format.html { redirect_to schools_url}
      else
        @flag.update_attributes(school_approve: false)
        format.html { redirect_to schools_url}
    end
    end
    #format.html { redirect_to orders_url}
    #respond_to do |format|
      #if @flag = School.find(:conditions => {:school_approve => false})
        #format.html { redirect_to orders_url}
        #@flag.update_attributes(school_approve: true)
      #else
        #format.html { redirect_to students_url}
        #@flag.update_attribute(:school_approve, false)
      #end  
    #end
    

  end

  def show
      @students = Student.where(school_id: params[:id])
       #respond_with(@school)
         
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
      params.require(:school).permit(:name, :address, :frachise_id, :school_approve)
    end
end
