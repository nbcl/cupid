class AddEmailToPostulante < ActiveRecord::Migration[5.2]
  def change
    add_column :postulantes, :email, :string
  end
end
