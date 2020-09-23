class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @students = Student.all
    # byebug

  end

  def create
    # byebug
    @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
    render 'new'
    
  end

end
