class AddStrategiesToIncidents < ActiveRecord::Migration[5.0]
  def change
    add_column :incidents, :strategies, :string
  end
end
