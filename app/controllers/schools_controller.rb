class SchoolsController < ApplicationController
  before_action :set_school, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    if current_user.admin?
      @schools = School.all
      #@schools = School.pending
    else
      @schools = School.approved
    end
  end

  def approve
  end

  def process_approve
    @flag = School.all
    #@flag = School.find_by(params[:id])
    #@flag.update_attributes(school_approve: true)
    #redirect_to school_path(@school)
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
