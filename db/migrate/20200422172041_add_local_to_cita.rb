class AddLocalToCita < ActiveRecord::Migration[5.2]
  def change
    add_reference :cita, :local, foreign_key: true
  end
end
