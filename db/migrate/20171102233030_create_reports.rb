class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.string :context
      t.string :category
      t.string :description
      t.timestamps
    end
  end
end
