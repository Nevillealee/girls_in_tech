class RenameIncidentsTable < ActiveRecord::Migration[5.0]
  def change
    rename_table :incidents, :incident_reports
    add_column :incident_reports, :description, :string
    drop_table :reports
  end
end
