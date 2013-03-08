class RenameClassInDollsToDollrole < ActiveRecord::Migration
  def up
    rename_column :dolls, :class, :dollrole
  end

  def down
  end
end
