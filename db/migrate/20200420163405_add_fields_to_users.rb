class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :edad, :date
    add_column :users, :descripcion, :string
    add_column :users, :comuna, :string
    add_column :users, :telefono, :string
  end
end
