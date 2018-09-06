# frozen_string_literal: true

class Course < ApplicationRecord
  SEMESTER_OPTIONS = ["Fall 2018", "Winter 2019"].freeze

  has_many :enrollments
  has_many :students, through: :enrollments
  belongs_to :teacher
  has_many :grades, through: :enrollments

  validates :name, presence: true

  scope :fall_semester, -> { where(semester: "Fall 2018").sort_by{|course| course.name} }
  scope :winter_semester, -> { where(semester: "Winter 2019").sort_by{|course| course.name} }

  # def course_teacher
  #   User.all.each do |user|
  #     if teacher.id == user.role_id && user.role_type == "Teacher"
  #       return user.name
  #     end
  #   end
  # end

  def course_teacher
    User.where(role_id: teacher.id, role_type: "Teacher")
        .first
        .name
  end

  # def self.winter_semester
  #   Course.where(semester: "Winter 2019")
  # end

  def course_grade(student)
    enrollment_for_student(student).grade
  end

  def enrollment_date_for_student(student)
    enrollments.find_by(student: student).enrollment_date
  end

  def self.most_popular
    Enrollment
      .select("*, count(enrollments.course_id) AS enrollee_count")
      .group(:course_id)
      .order("enrollee_count DESC")
      .first
      .course_name
  end

private

  def enrollment_for_student(student)
    enrollments.find_by(course: self, student: student)
  end
end
