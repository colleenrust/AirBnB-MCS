class RoomsController < ApplicationController
  def index
    @rooms = Room.all

    if params[:home_type].present?
      @rooms = @rooms.where(home_type: params[:home_type])
    end
    
    if params[:city].present?
      @rooms = @rooms.where(city: params[:city])
    end

    if params[:state].present?
      @rooms = @rooms.where(state: params[:state])
    end
    # render :index
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
      room_image: params[:room][:room_image],
    )
    @room.save
    redirect_to "/rooms/#{@room.id}" 
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
