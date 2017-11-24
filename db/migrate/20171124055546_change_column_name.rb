class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :students, :incidents_count, :incident_reports_count  
    change_column_default :students, :incident_reports_count, 0
  end
end
