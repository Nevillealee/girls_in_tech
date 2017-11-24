class ChangeStudents < ActiveRecord::Migration[5.0]
  def change
    change_column_default :students, :incidents_count, 0
  end
end
