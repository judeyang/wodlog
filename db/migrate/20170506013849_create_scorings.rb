class CreateScorings < ActiveRecord::Migration[5.0]
  def change
    create_table :scorings do |t|
      t.integer :wod_id
      t.integer :user_id
      t.text :content

      t.timestamps
    end
  end
end
