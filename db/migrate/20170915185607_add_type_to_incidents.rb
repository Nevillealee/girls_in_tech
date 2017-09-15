class AddTypeToIncidents < ActiveRecord::Migration[5.0]
  def change
    add_column :incidents, :type, :string
  end
end
