class WhiteboardPhoto < ActiveRecord::Base
  has_attached_file :photo,
                    styles: { large: "1024x1024>" },
                    processors: [:whiteboardify]

  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
  validates_attachment_presence :photo
  validates_presence_of :secret_key
  before_validation :ensure_secret_key_present

  def to_param
    secret_key
  end

private

  def ensure_secret_key_present
    self.secret_key = SecureRandom.hex unless self.secret_key.present?
  end
end
