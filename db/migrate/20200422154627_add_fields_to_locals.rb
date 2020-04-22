class AddFieldsToLocals < ActiveRecord::Migration[5.2]
  def change
    add_column :locals, :name, :string
    add_column :locals, :valoracion, :float
    add_column :locals, :comuna, :string
    add_column :locals, :descripcion, :text
  end
end
