class Enrollment < ApplicationRecord
  SEMESTER_OPTIONS = ["Fall 2018", "Winter 2019"]
  belongs_to :student
  belongs_to :course
end
