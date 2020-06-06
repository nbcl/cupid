class CreateInteractions < ActiveRecord::Migration[5.2]
  def change
    create_table :interactions do |t|
      t.boolean :like

      t.timestamps
    end
  end
end
