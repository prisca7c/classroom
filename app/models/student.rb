class Student < ApplicationRecord
  has_many :enrollments
  has_many :courses, through: :enrollments
  has_many :teachers, through: :courses
  has_many :grades, through: :enrollments

  def student_name
    User.all.each do |user|
      if user.role_id == self.id && user.role_type == "Student"
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

  def enrollment
    Enrollment.all.find do |enrollment|
      enrollment.student_id == self.id
    end
  end

  def grade
    enrollment.grade
  end
end
