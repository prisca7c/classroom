class RemoveYearFromEnrollments < ActiveRecord::Migration[5.2]
  def change
    remove_column :enrollments, :year, :integer
  end
end
