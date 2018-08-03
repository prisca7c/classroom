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

  def fall_2018
    courses.select{|course| course.semester == "Fall 2018"}
  end

  def winter_2019
    courses.select{|course| course.semester == "Winter 2019"}
  end
end
