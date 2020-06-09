class Invitation < ApplicationRecord
    #belongs_to :user_invita, class_name: 'User', foreign_key: 'user_invita'
    #belongs_to :user_invitado, class_name: 'User', foreign_key: 'user_invitado'
    belongs_to :local
    has_one :citum
end
