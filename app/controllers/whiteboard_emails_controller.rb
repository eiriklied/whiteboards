class WhiteboardEmailsController < ApplicationController
  def create
    @whiteboard_photo = WhiteboardPhoto.find_by secret_key: params[:whiteboard_photo_id]
    @whiteboard_email = @whiteboard_photo.whiteboard_emails.build(email_params)

    if @whiteboard_email.save
      WhiteboardMailer.mail_whiteboard_photo(@whiteboard_email).deliver
    end
  end

private
  def email_params
    params.fetch(:whiteboard_email, {}).permit(:address)
  end
end
