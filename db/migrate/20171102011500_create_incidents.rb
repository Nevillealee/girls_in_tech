class CreateIncidents < ActiveRecord::Migration[5.0]
  def change
    create_table :incidents do |t|
      t.string :behavior
      t.string :place
      t.time :time
      t.integer :student_id
      t.timestamps
    end
    add_index :incidents, :student_id
  end
end
