class CreateWhiteboardPhotos < ActiveRecord::Migration
  def change
    create_table :whiteboard_photos do |t|
      t.string :secret_key

      t.timestamps
    end
  end
end
