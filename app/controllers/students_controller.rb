class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
  end

  def show
    @student = Student.find_by_id(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
