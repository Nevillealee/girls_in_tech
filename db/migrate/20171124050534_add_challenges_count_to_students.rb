class AddChallengesCountToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :challenges_count, :integer
    change_column_default :students, :challenges_count, 0
  end
end
