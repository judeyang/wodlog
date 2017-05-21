class ChangeContentFieldToScorings < ActiveRecord::Migration[5.0]
  def change
    change_column :scorings, :content, :integer
  end
end
