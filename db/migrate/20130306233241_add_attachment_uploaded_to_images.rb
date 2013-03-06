class AddAttachmentUploadedToImages < ActiveRecord::Migration
  def self.up
    change_table :images do |t|
      t.attachment :uploaded
    end
  end

  def self.down
    drop_attached_file :images, :uploaded
  end
end
