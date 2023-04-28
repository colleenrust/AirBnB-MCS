class RoomImagesController < ApplicationController
  before_action :set_room
  
  def create
    @room = Room.find(params[:room_id])
    @room_image = @room.room_images.create(room_image_params)

    if @room_image.save
      render template: "/rooms/:id"
    else
      render :new
    end
  end

  def destroy
    @room_image = RoomImage.find(params[:id])
    @room_image.destroy

    redirect_to @room, notice: "Room image was successfully deleted."
  end

  private

  def room_image_params
    params.require(:room_image).permit(:image)
  end
end

