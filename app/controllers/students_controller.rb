require 'pry'
class StudentsController < ApplicationController
  
  def index
    @students = Students.all
  end
  
  def new
    @student = Students.new
  end
  
  def create 
    binding.pry
    @student = Students.create(first_name: params[:student][:title], last_name: params[:student][:room_number])
    redirect_to student_path(@student)
  end
  
  def show 
    @student = Students.find(params[:student][:id])
  end
  
  def edit 
  end
  
  def update 
  end
  
end  