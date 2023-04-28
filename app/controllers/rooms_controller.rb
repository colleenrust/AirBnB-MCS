class RoomsController < ApplicationController
  def index
    @rooms = Room.all
    render :index
  end
  
  def show
    @room = Room.find_by(id: params[:id])
    render :show
  end
  
  def new    
    @room = Room.new
  end

  def create
    @room = Room.new(
      user_id: params[:room][:user_id],
      address: params[:room][:address],
      city: params[:room][:city],
      state: params[:room][:state],
      price: params[:room][:price],
      description: params[:room][:description],
      home_type: params[:room][:home_type],
      total_occupancy: params[:room][:total_occupancy],
      total_bedrooms: params[:room][:total_bedrooms],
      total_bathrooms: params[:room][:total_bathrooms],
    )
    if @room.save
      @room_image = RoomImage.new(
        url: params[:room_image],
        room_id: @room_id,
      )
      @room_image.save
      redirect_to "/rooms/#{@room.id}"
    else
      render json: {errors: @room.errors.full_messages}
    end
  end
  
  def edit
    @room = Room.find_by(id: params[:id])
    render :edit
  end

  def update
    room = Room.find_by(id: params[:id])
    room.age = params[:room][:age]
    room.name = params[:room][:name]
    room.species = params[:room][:species]
    room.save
    redirect_to "/rooms/#{room.id}"
  end
  
  def destroy
    room = Room.find_by(id: params[:id])
    room.destroy
    redirect_to "/rooms"
  end
end
