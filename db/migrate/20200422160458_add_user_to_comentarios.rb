class AddUserToComentarios < ActiveRecord::Migration[5.2]
  def change
    add_reference :comentarios, :user, foreign_key: true
  end
end
