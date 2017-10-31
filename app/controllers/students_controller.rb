class StudentsController < ApplicationController
  def index
    @students = Student.all
    p "STUDENTS"
    p @students
  end
end
