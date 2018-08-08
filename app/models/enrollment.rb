# frozen_string_literal: true

class Enrollment < ApplicationRecord
  belongs_to :student
  belongs_to :course
  has_one :grade

  validates :course_id, uniqueness: { scope: %i[student course] }

  def self.for_semester(semester)
    joins(:course)
      .where(enrollments: { courses: { semester: semester } })
  end

  delegate :name, to: :course, prefix: true
  delegate :letter, to: :grade, prefix: true

  def enrollment_date
    created_at&.strftime("%v")
  end
end
