class RemoveEnrollmentIdFromGrade < ActiveRecord::Migration[5.2]
  def change
    remove_column :grades, :enrollment_id, :integer
  end
end
