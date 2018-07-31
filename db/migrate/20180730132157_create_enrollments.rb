class CreateEnrollments < ActiveRecord::Migration[5.2]
  def change
    create_table :enrollments do |t|
      t.references :student, null: false
      t.references :course, null: false
      t.string :semester, null: false

      t.timestamps
    end
  end
end
