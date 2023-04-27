class RoomsController < ApplicationController
  def index
    render json: {message: "index test"}
  end
end
