class CreateValoracions < ActiveRecord::Migration[5.2]
  def change
    create_table :valoracions do |t|
      t.float :valor

      t.timestamps
    end
  end
end
