class CreateUreports < ActiveRecord::Migration[5.2]
  def change
    create_table :ureports do |t|
      t.text :reason

      t.timestamps
    end
  end
end
