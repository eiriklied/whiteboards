class AddAttachmentPhotoToWhiteboardPhotos < ActiveRecord::Migration
  def self.up
    change_table :whiteboard_photos do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :whiteboard_photos, :photo
  end
end
