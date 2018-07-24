class StudentsController < ApplicationController
  
  def index
    @students = Students.all
  end
  
  def new
    @student = Students.new
  end
  
  def create 
    
  end
  
  def show 
  end
  
  def edit 
  end
  
  def update 
  end
  
end  