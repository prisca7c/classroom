class Student < ApplicationRecord
  has_many :enrollments
  has_many :courses, through: :enrollments
  has_many :teachers, through: :courses

  def student_name(student_id)
    User.all.each do |user|
      if user.role_id == student_id && user.role_type == "Student"
        return user.name
      end
    end
  end
end
