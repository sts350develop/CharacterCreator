class CreateDolls < ActiveRecord::Migration
  def change
    create_table :dolls do |t|
      t.string :class
      t.string :name

      t.timestamps
    end
  end
end
