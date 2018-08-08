# frozen_string_literal: true

class EnrollmentController < ApplicationController
  def new
    @enrollment = Enrollment.new
    @course = Course.new
  end

  def create
    course = Course.find(params[:course][:name])
    student = User.find(session[:user_id]).role
    Enrollment.create(course: course, student: student, grade: Grade.new)
    redirect_to profiles_path(@student)
  end
end
