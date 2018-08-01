class ApplicationController < ActionController::Base
  protected

  before_action :require_login
  skip_before_action :require_login, only: %i[new home create]

  def require_login
    redirect_to "/" unless session.include? :user_id
  end

  # def create
  #   User.new(user_params, role: Teacher.new(role_params))
  # end

  # def current_user
  #   @current_user ||= User.find(session[:current_user_id])
  # end

  # def current_role
  #   current_user.role
  # end

  # delegate :role_is?, to: :current_user
end
#enrollment to join classes_students attr semester

#grade belongs_to each of them
#teacher can create a grade on the class show page? #need a form that submits to Grade#Create
#probably don't need a Teacher or Student index.
#The teacher show page can show all classes and the students in them.
#Nest courses in teacher routes to filter courses by teacher
#The student show page will show only the students classes.  Will have link to browse all courses on the courses index.
#Will have link on the course index for student to add a course.  When teachers visit the page they will see their courses only and the students in them.
#Grade will only exist on the student show page and the teacher classes/class page




#enrollments controller
#courses controller for teachers
#courses controller for students
#grade as column in enrollment
