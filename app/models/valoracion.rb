class Valoracion < ApplicationRecord
  belongs_to :user
  belongs_to :local
end
