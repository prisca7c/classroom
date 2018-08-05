class Course < ApplicationRecord
  SEMESTER_OPTIONS = ["Fall 2018", "Winter 2019"]
  has_many :enrollments
  has_many :students, through: :enrollments
  belongs_to :teacher
  has_many :grades, through: :enrollments
  validates :name, presence: true

  def course_teacher
    User.all.each do |user|
      if self.teacher.id == user.role_id && user.role_type == "Teacher"
        return user.name
      end
    end
  end

  def self.fall_semester
    Course.all.select{ |course| course.semester == "Fall 2018" }
  end

  def self.winter_semester
    Course.all.select{ |course| course.semester == "Winter 2019" }
  end

  def course_enrollment
    Enrollment.all.find do |enrollment|
      enrollment.course_id == self.id
    end
  end
end
