class StudentsController < ApplicationController
  
  def index
    @students = Students.all
  end
  
  def new
    @student = Students.new
  end
  
  def create 
    @student = Students.create(title: params[:student][:title], room_number: params[:student][:room_number])
    redirect_to student_path(@student)
  end
  
  def show 
  end
  
  def edit 
  end
  
  def update 
  end
  
end  