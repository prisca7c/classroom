# frozen_string_literal: true

class Student < ApplicationRecord
  has_many :enrollments
  has_many :courses, through: :enrollments
  has_many :teachers, through: :courses
  has_many :grades, through: :enrollments
  belongs_to :user

  def student_name
    User.all.each do |user|
      return user.name if user.role_id == id && user.role_type == "Student"
    end
  end

  def fall_2018
    courses.select { |course| course.semester == "Fall 2018" }
  end

  def winter_2019
    courses.select { |course| course.semester == "Winter 2019" }
  end

  def enrollment(course)
    Enrollment.all.find do |enrollment|
      enrollment.student_id == id && enrollment.course_id == course.id
    end
  end

  def grade(course)
    enrollment(course).grade
  end
end
