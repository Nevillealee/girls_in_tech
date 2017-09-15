class AddStudentToIncidents < ActiveRecord::Migration[5.0]
  def change
    add_reference :incidents, :student, foreign_key: true
  end
end
