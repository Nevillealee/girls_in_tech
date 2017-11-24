class AddServiceProgramToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :service_program, :string
  end
end
