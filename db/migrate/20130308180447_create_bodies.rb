class CreateBodies < ActiveRecord::Migration
  def change
    create_table :bodies do |t|
      t.string :imagename
      t.integer :z_index

      t.timestamps
    end
  end
end
