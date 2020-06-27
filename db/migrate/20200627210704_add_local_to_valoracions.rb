class AddLocalToValoracions < ActiveRecord::Migration[5.2]
  def change
    add_reference :valoracions, :local, foreign_key: true
  end
end
