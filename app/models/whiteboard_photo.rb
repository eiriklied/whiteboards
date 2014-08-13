class WhiteboardPhoto < ActiveRecord::Base
  has_attached_file :photo,
                    styles: { large: "1024x1024>" },
                    processors: [:whiteboardify]

  validates_attachment :photo,
                       presence: {message: 'You need to upload a photo'},
                       content_type: {content_type: 'image/jpeg', message: 'You need to upload a jpeg image'}


  has_many :whiteboard_emails

  validates :secret_key, presence: true
  before_validation :ensure_secret_key_present

  def to_param
    secret_key
  end

private

  def ensure_secret_key_present
    self.secret_key = SecureRandom.hex unless self.secret_key.present?
  end
end
