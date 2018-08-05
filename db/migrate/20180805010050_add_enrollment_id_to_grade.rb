class AddEnrollmentIdToGrade < ActiveRecord::Migration[5.2]
  def change
    add_column :grades, :enrollment_id, :integer
  end
end
