class EnrollmentController < ApplicationController
  def new
    @enrollment = Enrollment.new
    @course = Course.new
  end

  def create
    # binding.pry
    course = Course.find(params[:course][:name])
    student = User.find(session[:user_id])
    enrollment = Enrollment.new(course_id: course.id, student_id: student.id)
    redirect_to profiles_path(student)
  end
end
