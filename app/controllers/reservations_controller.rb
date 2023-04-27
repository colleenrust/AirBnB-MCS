class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find_by(id: params[:id])
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      redirect_to @reservation
    else
      render :new, status: unprocessable_entity
    end
  end

  private
    def reservation_params
      params.require(:reservation).permit(:start_date, :end_date)
    end
end