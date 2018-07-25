require 'pry'
class SchoolClassesController < ApplicationController
  
  def index
    @school_classes = SchoolClass.all
  end
  
  def new 
    @school_class = SchoolClass.new 
  end
  
  def create
    # binding.pry
    @school_class = SchoolClass.create(params[:school_class])
    redirect_to school_class_path(@school_class)
  end
  
  def show 
    # binding.pry
    @school_class = SchoolClass.find(params[:id])
  end
  
  def edit 
  end
  
  def update 
  end
  
end  