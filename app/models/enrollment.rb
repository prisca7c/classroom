class Enrollment < ApplicationRecord
  SEMESTER_OPTIONS = ["Fall 2018", "Winter 2018"]
  belongs_to :student
  belongs_to :course
end
