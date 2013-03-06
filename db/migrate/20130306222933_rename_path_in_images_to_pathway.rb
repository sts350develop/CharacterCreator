class RenamePathInImagesToPathway < ActiveRecord::Migration
  def up
    rename_column :images, :path, :pathway
  end

  def down
  end
end
