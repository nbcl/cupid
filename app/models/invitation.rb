class Invitation < ApplicationRecord
    belongs_to :user_invita, class_name: 'User'
    belongs_to :user_invitado, class_name: 'User'
    belongs_to :local
    has_one :citum
end
