class Enrollment < ApplicationRecord
  belongs_to :student
  belongs_to :course
  has_one :grade

  def enrollment_date
    created_at.strftime('%v') if created_at
  end

end
