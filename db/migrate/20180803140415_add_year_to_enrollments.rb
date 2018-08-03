class AddYearToEnrollments < ActiveRecord::Migration[5.2]
  def change
    add_column :enrollments, :year, :integer
  end
end
