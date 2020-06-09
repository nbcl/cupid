class AddInvitationIdToCita < ActiveRecord::Migration[5.2]
  def change
    add_column :cita, :invitation_id, :integer
  
  end
end
