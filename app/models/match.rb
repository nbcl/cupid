class Match < ApplicationRecord
    #belongs_to :user_id1, class_name: 'User'
    #belongs_to :user_id2, class_name: 'User' 
    has_one :citum 
    has_many :invitations
    has_many :users
end
