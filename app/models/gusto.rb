# frozen_string_literal: true

class Gusto < ApplicationRecord
  has_and_belongs_to_many :users
end
