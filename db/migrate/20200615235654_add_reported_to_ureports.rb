class AddReportedToUreports < ActiveRecord::Migration[5.2]
  def change
    add_column :ureports, :reported_id, :int
  end
end
