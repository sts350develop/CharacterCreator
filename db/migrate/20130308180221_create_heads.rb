class CreateHeads < ActiveRecord::Migration
  def change
    create_table :heads do |t|
      t.string :imagename
      t.integer :z_index

      t.timestamps
    end
  end
end
