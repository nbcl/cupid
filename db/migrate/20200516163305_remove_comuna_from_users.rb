class RemoveComunaFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :comuna, :string
  end
end
