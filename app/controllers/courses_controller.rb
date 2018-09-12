# frozen_string_literal: true

class CoursesController < ApplicationController
  # before_action { role_is?(Teacher) || redirect_to(root_path) }

  # /students/5/courses
  def index
    @courses = Course.all
    @user = User.find(session[:user_id])
  end

  def new
    @course = Course.new
  end

  def create
    teacher = User.find_by_id(session[:user_id]).role
    @course = Course.create(course_params)
    @course.teacher = teacher
    @course.semester = params[:semester]
    if @course.save
      redirect_to profiles_path(teacher)
    else
      render :new
    end
  end

  def show
    @course = Course.find(params[:id])
    render json: @course.to_json(include: [teacher: { include: :users }, students: { include: :users }])
  end

  def course_params
    params.require(:course).permit(:name)
  end
end
