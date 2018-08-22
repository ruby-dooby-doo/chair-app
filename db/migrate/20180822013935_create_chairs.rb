class CreateChairs < ActiveRecord::Migration[5.2]
  def change
    create_table :chairs do |t|
      t.string :material
      t.integer :height
      t.string :color
      t.integer :legs

      t.timestamps
    end
  end
end
