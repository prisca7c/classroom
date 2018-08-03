class RemoveSemesterFromEnrollment < ActiveRecord::Migration[5.2]
  def change
    remove_column :enrollments, :semester, :string
  end
end
