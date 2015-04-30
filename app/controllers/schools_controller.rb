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

  def process_approve
    @school = School.find_by_id(params[:school_approve])

      respond_to do |format|
        if @school == true
          @school == School.all
          format.html { redirect_to schools_url}
        else
          format.html { redirect_to students_url}
        end
      end
    #espond_with(@schools)
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
