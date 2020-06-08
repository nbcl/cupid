class Match < ApplicationRecord
    belongs_to :user_id1, class_name: 'User', foreign_key: 'user_id1'
    belongs_to :user_id2, class_name: 'User', foreign_key: 'user_id2' 
    ##has_one :citum 
    #has_many :users
    ##new
    #belongs_to :interaction
    has_many :invitations
    has_many :cita

end
