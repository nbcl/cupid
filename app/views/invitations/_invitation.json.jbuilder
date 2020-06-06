json.extract! invitation, :id, :user_invita, :user_invitado, :fecha, :local_id, :confirma, :created_at, :updated_at
json.url invitation_url(invitation, format: :json)
