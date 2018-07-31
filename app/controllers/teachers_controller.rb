class TeachersController < ApplicationController

  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end

  def create
  end

  def show
    @teacher = User.where(type: "Teacher", type_id: params[:id]).role
    @teacher = Teacher.find_by_id(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
