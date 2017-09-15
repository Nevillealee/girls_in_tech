class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :grade
      t.date :dob
      t.integer :student_id
      t.timestamps
    end
    add_index :students, :student_id
  end
end
