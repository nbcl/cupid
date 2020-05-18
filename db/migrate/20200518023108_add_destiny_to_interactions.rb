class AddDestinyToInteractions < ActiveRecord::Migration[5.2]
  def change
    add_column :interactions, :user_id_destiny, :int
  end
end
