# frozen_string_literal: true

class Comuna < ApplicationRecord
  has_many :users
end
