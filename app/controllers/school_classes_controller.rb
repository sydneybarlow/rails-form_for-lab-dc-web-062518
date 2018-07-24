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
    @school_class = SchoolClass.create(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
    redirect_to school_class_path(@school_class)
  end
  
  def show 
    binding.pry
    @school_classes = SchoolClass.find(params[:id])
  end
  
  def edit 
  end
  
  def update 
  end
  
end  