class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :incidents, :type, :context
  end
end
