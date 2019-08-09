class CreateTechniques < ActiveRecord::Migration[5.2]
  def change
    create_table :techniques do |t|
      t.string :technique_name
      t.string :style
      t.integer :difficulty_level
      t.integer :user_id

      t.timestamps
    end
  end
end
