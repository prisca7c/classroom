class ChangeUsersRoleTypeToString < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :role_type, :string
  end
end
