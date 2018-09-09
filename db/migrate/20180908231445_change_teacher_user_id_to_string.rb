class ChangeTeacherUserIdToString < ActiveRecord::Migration[5.2]
  def change
    change_column :teachers, :user_id, :string
  end
end
