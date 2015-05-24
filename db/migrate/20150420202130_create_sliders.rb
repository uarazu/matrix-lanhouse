class CreateSliders < ActiveRecord::Migration
  def change
    create_table :sliders do |t|
      t.string :description_1
      t.string :description_2
      t.string :description_3
      t.string :description_4
      t.string :description_5

      t.timestamps
    end
  end
end
