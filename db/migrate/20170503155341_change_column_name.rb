class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    change_column :wods, :wodtype, :boolean
  end
end
