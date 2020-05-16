class RemoveComunaFromLocals < ActiveRecord::Migration[5.2]
  def change
    remove_column :locals, :comuna, :string
  end
end
