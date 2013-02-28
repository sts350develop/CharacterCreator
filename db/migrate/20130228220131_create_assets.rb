class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :name
      t.integer :z_index
      t.string :category

      t.timestamps
    end
  end
end
