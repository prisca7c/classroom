class Course < ApplicationRecord
  has_many :enrollments
  has_many :students, through: :enrollments
  belongs_to :teacher
# Semesters = []
#   def semester=(season)
#     @enrollment = Enrollment.new(semester: season)
#     binding.pry
#   end

#   def semester
#     @enrollment.semester
#   end
end
