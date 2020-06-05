class Invitation < ApplicationRecord
    has_one :citum
    belongs_to :match
end
