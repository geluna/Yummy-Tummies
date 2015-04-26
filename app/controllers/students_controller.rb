class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

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
<<<<<<< HEAD
    #@schools = @student.name
    respond_with(@student)    
=======
    respond_with(@student)
>>>>>>> 9346074db02e5e96138e36ad469424dc81e0ca14
  end

  def new
    @student = Student.new
    @shools = School.all
    respond_with(@student)

  end

  def edit
  end

  def add
    @student = Student.all
  end
  

  def create
    @school = School.new
    @student = Student.new(student_params)   
    @student.update_attributes(user_id:current_user.id)
    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @shools = School.all
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

    def add
    @student = Student.all
  end

    def student_params
      params.require(:student).permit(:id, :fname, :lname, :school_id, :user_id)
    end
    
end
