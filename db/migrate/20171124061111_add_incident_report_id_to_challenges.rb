class AddIncidentReportIdToChallenges < ActiveRecord::Migration[5.0]
  def change
    add_column :challenges, :incident_report_id, :integer
  end
end
