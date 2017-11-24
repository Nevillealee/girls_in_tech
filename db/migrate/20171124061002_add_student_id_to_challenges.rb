class AddStudentIdToChallenges < ActiveRecord::Migration[5.0]
  def change
    add_column :challenges, :student_id, :integer
  end
end
