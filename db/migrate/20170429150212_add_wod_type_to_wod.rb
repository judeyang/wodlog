class AddWodTypeToWod < ActiveRecord::Migration[5.0]
  def change
    add_column :wods, :is_task_priority, :boolean, default: false
    add_column :wods, :is_time_priority, :boolean, default: false
  end
end
