class AddDescriptionToIncidents < ActiveRecord::Migration[5.0]
  def change
    add_column :incidents, :description, :text
  end
end
