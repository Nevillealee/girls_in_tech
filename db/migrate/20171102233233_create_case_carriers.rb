class CreateCaseCarriers < ActiveRecord::Migration[5.0]
  def change
    create_table :case_carriers do |t|
      t.string :name
      t.string :title

      t.timestamps
    end
  end
end
