class AddLocalToPlatos < ActiveRecord::Migration[5.2]
  def change
    add_reference :platos, :local, foreign_key: true
  end
end
