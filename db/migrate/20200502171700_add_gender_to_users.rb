class AddGenderToUsers < ActiveRecord::Migration[5.2]
  def change
    # Add 'default: 0'
    add_column :users, :gender, :integer, default: 0
  end
end
