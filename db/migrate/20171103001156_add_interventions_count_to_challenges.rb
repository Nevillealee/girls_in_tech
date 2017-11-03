class AddInterventionsCountToChallenges < ActiveRecord::Migration[5.0]
  def change
    add_column :challenges, :interventions_count, :integer
  end
end
