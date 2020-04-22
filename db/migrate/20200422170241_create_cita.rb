class CreateCita < ActiveRecord::Migration[5.2]
  def change
    create_table :cita do |t|
      t.date :fecha

      t.timestamps
    end
  end
end
