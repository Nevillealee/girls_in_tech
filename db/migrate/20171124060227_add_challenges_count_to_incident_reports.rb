class AddChallengesCountToIncidentReports < ActiveRecord::Migration[5.0]
  def change
    add_column :incident_reports, :challenges_count, :integer
    change_column_default :incident_reports, :challenges_count, 0
  end
end
