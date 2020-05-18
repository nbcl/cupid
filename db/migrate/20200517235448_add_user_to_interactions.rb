class AddUserToInteractions < ActiveRecord::Migration[5.2]
  def change
    add_reference :interactions, :user, foreign_key: true
  end
end
