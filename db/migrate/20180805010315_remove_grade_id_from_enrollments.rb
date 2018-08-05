class RemoveGradeIdFromEnrollments < ActiveRecord::Migration[5.2]
  def change
    remove_column :enrollments, :grade_id, :integer
  end
end
