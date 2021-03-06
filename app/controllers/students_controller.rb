class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  before_action :add_student, only: [:add, :update]

  respond_to :html

  def index
 
    if current_user.admin?
      @students = Student.all
    elsif current_user.institution?
      @students = Student.all
    else
      @students = Student.where(user_id:current_user.id)
      @user = User.all
    end
  end

  def show
    respond_with(@student)
  end

  def new
    @student = Student.new
    respond_with(@student)
  end

  def edit

  end
  def add

  end
  
  def process_add
    @found = Student.find_by_id(params[:id]) rescue nil

    respond_to do |format|
      if @found == nil

        format.html { redirect_to students_url, alert: 'Student does not exist for chosen school' }
      else

        @found.update_attributes(user_id: current_user.id)
       
        format.html { redirect_to students_url}
      end
    end   
  end
  

  def create
    @student = Student.new(student_params)   

    @student.update_attributes(user_id:current_user.id)
    @student.user_id = current_user.id

    respond_to do |format|
      if @student.save
        format.html { redirect_to students_url }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @schools = School.all
    @student.update(student_params)
    respond_with(@student)
  end

  def destroy
    @student.destroy
    respond_with(@student)
  end
  

  private
    
    def set_student
      @student = Student.find(params[:id])
    end

    def add_student
      @student = Student.all
    end

    def add_params
      params.require(:student).permit(:user_id)
    end
    
    def student_params
      params.require(:student).permit(:id, :fname, :lname, :school_id, :user_id)
    end
    
end
