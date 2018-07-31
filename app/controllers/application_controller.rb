class ApplicationController < ActionController::Base
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
