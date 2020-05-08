# frozen_string_literal: true

class Comentario < ApplicationRecord
  belongs_to :local
  belongs_to :user
end
