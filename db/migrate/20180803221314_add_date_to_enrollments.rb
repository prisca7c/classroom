class AddDateToEnrollments < ActiveRecord::Migration[5.2]
  def change
    add_column :enrollments, :enrollment_date, :datetime
  end
end
