class AddUserToValoracions < ActiveRecord::Migration[5.2]
  def change
    add_reference :valoracions, :user, foreign_key: true
  end
end
