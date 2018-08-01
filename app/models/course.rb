class Course < ApplicationRecord
  has_many :enrollments
  has_many :students, through: :enrollments
  belongs_to :teacher

  def course_teacher(course)
    User.all.each do |user|
      if course.teacher.id == user.role_id && user.role_type == "Teacher"
        return user.name
      end
    end
  end
end
