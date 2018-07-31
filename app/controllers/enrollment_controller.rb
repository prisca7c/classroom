class EnrollmentController < ApplicationController
  def new
    @enrollment = Enrollment.new
    @course = Course.new
  end

  def create
    course = Course.find(params[:course][:name])
    student = User.find(session[:user_id])
    Enrollment.create(course_id: course.id, student_id: student.id, semester: params[:semester])
    student.role.enrollments << Enrollment.all.last
    student.save
    redirect_to profiles_path(student)
  end
end
