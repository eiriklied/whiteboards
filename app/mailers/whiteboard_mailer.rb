class WhiteboardMailer < ActionMailer::Base
  default from: 'no-reply@whiteboards.herokuapp.com'

  def mail_whiteboard_photo(whiteboard_email)
    @whiteboard_email = whiteboard_email

    mail to: @whiteboard_email.address, subject: 'Your Whiteboard!'
  end
end
