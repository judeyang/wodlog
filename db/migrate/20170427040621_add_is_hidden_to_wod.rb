class AddIsHiddenToWod < ActiveRecord::Migration[5.0]
  def change
      add_column :wods, :is_hidden, :boolean, default: false
    end
end
