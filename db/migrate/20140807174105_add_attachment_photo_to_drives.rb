class AddAttachmentPhotoToDrives < ActiveRecord::Migration
  def self.up
    change_table :drives do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :drives, :photo
  end
end
