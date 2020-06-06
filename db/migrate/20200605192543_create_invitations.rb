class CreateInvitations < ActiveRecord::Migration[5.2]
  def change
    create_table :invitations do |t|
      t.integer :user_invita
      t.integer :user_invitado
      t.date :fecha
      t.integer :local_id
      t.boolean :confirma

      t.timestamps
    end
  end
end
