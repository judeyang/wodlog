class CreateWods < ActiveRecord::Migration[5.0]
  def change
    create_table :wods do |t|
      t.string :wodname
      t.text :description
      t.text :introduction

      t.timestamps
    end
  end
end
