# frozen_string_literal: true

class ChangeLocalsColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :locals, :name, :nombre
  end
end
