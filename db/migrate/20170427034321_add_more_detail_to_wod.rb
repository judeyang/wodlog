class AddMoreDetailToWod < ActiveRecord::Migration[5.0]
  def change
     add_column :wods, :wodtype, :string
     add_column :wods, :box, :string
  end
end
