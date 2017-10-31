class StudentsController < ApplicationController
  def index
    @students = Student.all
    p "STUDENTS"
    p @students
  end
  
  def show
    @student = Student.find(params[:id])
  end
end
