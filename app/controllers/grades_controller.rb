class GradesController < ApplicationController



  def edit
    @grade = Grade.find(params[:id])
  end

  def update
    # binding.pry
    @grade = Grade.find(params[:id])
    @grade.update(letter: params[:letter])
    teacher = User.find(session[:user_id])
    redirect_to profiles_path(teacher)
  end

  def show
    @grade = Grade.find(params[:id])
  end
end
