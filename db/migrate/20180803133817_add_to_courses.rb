class AddToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column(:courses, :semester, :string)

    Course.all.each do |course|
      if !course.enrollments.empty?
        course.update(semester: course.enrollments.first.semester)
      end
    end
  end
end
