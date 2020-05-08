# frozen_string_literal: true

class AddLocalToComentarios < ActiveRecord::Migration[5.2]
  def change
    add_reference :comentarios, :local, foreign_key: true
  end
end
