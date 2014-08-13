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
    @whiteboard_photo = WhiteboardPhoto.find_by! secret_key: params[:id]
  end

private
  def whiteboard_photo_params
    params.require(:whiteboard_photo).permit(:photo)
  end
end
