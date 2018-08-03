class EnrollmentController < ApplicationController
  def new
    @enrollment = Enrollment.new
    @course = Course.new
  end

  def create
    # binding.pry
    course = Course.find(params[:course][:name])
    student = User.find(session[:user_id])
    student.role.enrollments.build(course_id: course.id, student_id: student.id).save
    redirect_to profiles_path(student)
  end
end
