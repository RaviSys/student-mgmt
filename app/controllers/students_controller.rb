class StudentsController < ApplicationController
  before_action :set_student, only: %i[show edit update destroy]

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to students_path, notice: 'Student has been created successfully'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @student.update(student_params)
      redirect_to student_path(@student), notice: 'Student has been updated successfully'
    else
      render :edit
    end
  end

  def destroy
    @student.destroy
    redirect_to students_path, notice: 'Student has been deleted successfully'
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :email, :date_of_birth, :contact, :address)
  end

  def set_student
    @student = Student.find(params[:id])
  end

end
