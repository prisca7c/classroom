class ChangeTeachersUserId < ActiveRecord::Migration[5.2]
  def change
    change_column :teachers, :user_id, :integer
  end
end
