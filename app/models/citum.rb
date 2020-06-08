# frozen_string_literal: true

class Citum < ApplicationRecord
  belongs_to :user1, class_name: 'User'
  belongs_to :user2, class_name: 'User'
  belongs_to :local
  #belongs_to :invitation
  
end
