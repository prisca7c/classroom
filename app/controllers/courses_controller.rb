# frozen_string_literal: true

class CoursesController < ApplicationController
  # before_action { role_is?(Teacher) || redirect_to(root_path) }

  def index
    @courses = Course.all
    @user = User.find(session[:user_id])
  end

  def new
    @course = Course.new
  end

  def create
    teacher = User.find_by_id(session[:user_id]).role
    @course = Course.create(name: params[:course][:name], teacher: teacher, semester: params[:semester])
    if @course.save
      redirect_to profiles_path(teacher)
    else
      render :new
    end
  end

  def show
    @course = Course.find(params[:id])
  end

  def edit; end

  def update; end

  def destroy; end
end
