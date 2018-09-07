class GradesController < ApplicationController
skip_before_action :verify_authenticity_token
before_action :ensure_is_a_teacher


  def edit
    @grade = Grade.find(params[:id])
  end

  def update
    @enrollment = Enrollment.find(params[:id])
    @enrollment.grade.update(letter: params[:letter])
    @enrollment.save
    @grade = Grade.find(params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @grade.to_json }
      end
  end

  def show
    @grade = Grade.find(params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @grade.to_json }
      end
  end
end
