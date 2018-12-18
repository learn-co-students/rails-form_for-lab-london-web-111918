class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show

  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    redirect_to student_path(@student)
  end

  def edit
  end

  def update
    @student.update(student_params)
    redirect_to student_path(@student)
  end


  private

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

end
