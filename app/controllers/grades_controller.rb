class GradesController < ApplicationController

  before_action :ensure_is_a_teacher


  def edit
    @grade = Grade.find(params[:id])
  end

  def update
    @enrollment = Enrollment.find(params[:id])
    @enrollment.grade.update(letter: params[:letter])
    teacher = User.find(session[:user_id])
    @enrollment.save
    redirect_to profiles_path(teacher)
  end

  def show
    @grade = Grade.find(params[:id])
  end
end
