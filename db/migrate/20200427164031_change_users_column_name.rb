class ChangeUsersColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :name, :nombre
  end
end
