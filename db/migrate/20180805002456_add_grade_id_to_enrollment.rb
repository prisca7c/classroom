class AddGradeIdToEnrollment < ActiveRecord::Migration[5.2]
  def change
    add_column :enrollments, :grade_id, :integer
  end
end
