class AddSongToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :song, :string
  end
end
