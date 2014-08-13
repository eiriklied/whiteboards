class CreateWhiteboardEmails < ActiveRecord::Migration
  def change
    create_table :whiteboard_emails do |t|
      t.references :whiteboard_photo, index: true
      t.string :address

      t.timestamps
    end
  end
end
