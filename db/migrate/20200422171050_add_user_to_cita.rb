# frozen_string_literal: true

class AddUserToCita < ActiveRecord::Migration[5.2]
  def change
    change_table(:cita) do |c|
      c.references :user1, foreign_key: { to_table: 'users' }
      c.references :user2, foreign_key: { to_table: 'users' }
    end
  end
end
