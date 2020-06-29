class AddConfirmationToLocals < ActiveRecord::Migration[5.2]
  def change
    add_column :locals, :confirmation, :boolean, default: false
  end
end
