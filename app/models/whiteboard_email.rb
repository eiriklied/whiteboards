class WhiteboardEmail < ActiveRecord::Base
  belongs_to :whiteboard_photo
  validates :address, presence: true
end
