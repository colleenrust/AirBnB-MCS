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
      total_bathrooms: params[:room][:total_bathrooms]
    )
    @room.save
    redirect_to "/rooms/#{@room.id}"
  end
end
