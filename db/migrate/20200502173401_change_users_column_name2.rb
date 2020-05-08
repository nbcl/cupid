# frozen_string_literal: true

class ChangeUsersColumnName2 < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :gender, :genero
  end
end
