class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :title_1
      t.string :description_1
      t.string :title_2
      t.string :description_2
      t.string :title_3
      t.string :description_3
      t.string :title_4
      t.string :description_4

      t.timestamps
    end
  end
end
