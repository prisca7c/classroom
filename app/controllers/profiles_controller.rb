# frozen_string_literal: true

class ProfilesController < ApplicationController
  def show
    @user = User.find(session[:user_id])
  end

  def fall_2018_enrollments
    student = Student.find(params[:id])
    @courses = student.specific_fall_enrollments
    render json: @courses.to_json(include:[:course, :grade])
  end

  def winter_2019_enrollments
    student = Student.find(params[:id])
    @courses = student.specific_winter_enrollments
    render json: @courses.to_json(include:[:course, :grade])
  end
end
