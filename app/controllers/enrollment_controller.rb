class EnrollmentController < ApplicationController
  def new
    @enrollment = Enrollment.new
    @course = Course.new
  end

  def create
    if params[:course][:name].empty?
      redirect_to new_enrollment_path
    else
      course = Course.find(params[:course][:name])
      student = User.find(session[:user_id])
      student.role.enrollments.build(course_id: course.id, student_id: student.id, year: params[:year]).save
      redirect_to profiles_path(student)
    end
  end
end
