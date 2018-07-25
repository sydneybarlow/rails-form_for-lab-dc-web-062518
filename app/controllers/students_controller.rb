require 'pry'
class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end
  
  def new
    @student = Student.new
  end
  
  def create 
    # binding.pry
    @student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to student_path(@student)
  end
  
  def show 
    binding.pry
    @student = Student.find(params[:student][:id])
  end
  
  def edit
    @student = Student.find(params[:student][:id])
  end
  
  def update 
    @student = Student.find(params[:id])
    @student.update(params.require(:student))
    redirect_to student_path(@student)
  end
  
end  