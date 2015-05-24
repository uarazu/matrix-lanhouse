class CreateStructures < ActiveRecord::Migration
  def change
    create_table :structures do |t|
      t.string :left_title
      t.string :center_title
      t.string :center_description
      t.string :right_title

      t.timestamps
    end
  end
end
