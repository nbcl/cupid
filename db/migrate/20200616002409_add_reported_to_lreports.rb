class AddReportedToLreports < ActiveRecord::Migration[5.2]
  def change
    add_column :lreports, :reported_id, :int
  end
end
