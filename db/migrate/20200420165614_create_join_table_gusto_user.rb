class CreateJoinTableGustoUser < ActiveRecord::Migration[5.2]
  def change
    create_join_table :gustos, :users do |t|
      # t.index [:gusto_id, :user_id]
      # t.index [:user_id, :gusto_id]
    end
  end
end
