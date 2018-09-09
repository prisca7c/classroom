class AddUserIdToTeachers < ActiveRecord::Migration[5.2]
  def change
    remove_column :teachers, :user_id, :integer
  end
end
