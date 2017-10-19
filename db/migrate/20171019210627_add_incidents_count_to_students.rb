class AddIncidentsCountToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :incidents_count, :integer
  end
end
