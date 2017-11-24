class ChangeChallenges < ActiveRecord::Migration[5.0]
  def change
        change_column_default :challenges, :interventions_count, 0
  end
end
