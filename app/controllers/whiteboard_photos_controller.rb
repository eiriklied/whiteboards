class WhiteboardPhotosController < ApplicationController
  def new
    @whiteboard_photo = WhiteboardPhoto.new
  end

  def create
    @whiteboard_photo = WhiteboardPhoto.new(whiteboard_photo_params)
    if @whiteboard_photo.save
      redirect_to whiteboard_photo_path(@whiteboard_photo)
    else
      render 'new'
    end
  end

  def show
    load_whiteboard_photo
  end

  def email
    load_whiteboard_photo
  end

  def download
    load_whiteboard_photo
    tempfile = Tempfile.new('download')
    @whiteboard_photo.photo.copy_to_local_file(:large, tempfile.path)
    send_file(tempfile, filename: 'whiteboard.jpg')
  end

private
  def load_whiteboard_photo
    @whiteboard_photo = WhiteboardPhoto.find_by! secret_key: params[:id]
  end

  def whiteboard_photo_params
    params.fetch(:whiteboard_photo, {}).permit(:photo)
  end
end
