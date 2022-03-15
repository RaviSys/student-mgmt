class Admin::StudentsController < AdminController
  include ApplicationHelper
  before_action :set_student, only: %i[show edit update destroy]
  helper_method :formatted_date

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to admin_students_path, notice: 'Student has been created successfully'
    else
      render :new
    end
  end

  def show
  end

  def edit
    date = formatted_date(@student.date_of_birth)
  end

  def update
    if @student.update(student_params)
      redirect_to admin_student_path(@student), notice: 'Student has been updated successfully'
    else
      render :edit
    end
  end

  def destroy
    @student.destroy
    redirect_to admin_students_path, notice: 'Student has been deleted successfully'
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :email, :date_of_birth, :permanent_address, :local_address, :permanent_contact_number, :alternate_contact_number)
  end

  def set_student
    @student = Student.find(params[:id])
  end

  def formatted_date(date)
    date.strftime('%A, %b %d, %Y')
  end

end
