class AddIncidentToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :incident, :string
  end
end
