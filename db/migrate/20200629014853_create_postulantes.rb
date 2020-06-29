class CreatePostulantes < ActiveRecord::Migration[5.2]
  def change
    create_table :postulantes do |t|
      t.string :name
      t.text :content
      t.boolean :autorization

      t.timestamps
    end
  end
end
