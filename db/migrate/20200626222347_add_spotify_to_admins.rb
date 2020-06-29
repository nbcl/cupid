class AddSpotifyToAdmins < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :token, :string
  end
end
