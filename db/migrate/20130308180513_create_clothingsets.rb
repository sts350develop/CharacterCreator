class CreateClothingsets < ActiveRecord::Migration
  def change
    create_table :clothingsets do |t|
      t.string :imagename
      t.integer :z_index

      t.timestamps
    end
  end
end
