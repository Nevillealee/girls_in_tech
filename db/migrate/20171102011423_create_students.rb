class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :studentId
      t.date :dob
      t.integer :grade
      t.timestamps
    end
  end
end
