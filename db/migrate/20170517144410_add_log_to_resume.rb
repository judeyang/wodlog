class AddLogToResume < ActiveRecord::Migration[5.0]
  def change
    add_column :scorings, :log, :string
  end
end
