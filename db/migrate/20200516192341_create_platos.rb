class CreatePlatos < ActiveRecord::Migration[5.2]
  def change
    create_table :platos do |t|
      t.string :nombre
      t.string :descripcion
      t.integer :precio

      t.timestamps
    end
  end
end
