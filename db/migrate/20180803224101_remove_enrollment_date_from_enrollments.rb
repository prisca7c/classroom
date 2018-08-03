class RemoveEnrollmentDateFromEnrollments < ActiveRecord::Migration[5.2]
  def change
    remove_column :enrollments, :enrollment_date, :datetime
  end
end
