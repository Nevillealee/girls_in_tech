class CreateInterventions < ActiveRecord::Migration[5.0]
  def change
    create_table :interventions do |t|
      t.date :start_date
      t.date :end_date
      t.decimal :duration

      t.timestamps
    end
  end
end
