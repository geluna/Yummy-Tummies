class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @students = Student.where(user_id:current_user.id)
    @user = User.all
  end

  def show
    @schools = @student.name
    respond_with(@student)    
  end

  def new
    @student = Student.new
    @shools = School.all
    respond_with(@student)

  end

  def edit
  end

  def create
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

    def student_params
      params.require(:student).permit(:id, :fname, :lname, :school_id, :user_id)
    end
end
