class CreateStaffMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :staff_members do |t|
      t.string :name
      t.string :title
      t.string :department
      t.timestamps
    end
  end
end
