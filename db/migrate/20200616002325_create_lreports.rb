class CreateLreports < ActiveRecord::Migration[5.2]
  def change
    create_table :lreports do |t|
      t.text :reason

      t.timestamps
    end
  end
end
