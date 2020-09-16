class BookingsController < ApplicationController
  before_action :booking_params, only: [:create]

  def new
    @booking = Booking.new
  end

  def create
    raise
    @booking.create(booking_params)
    game = Game.find(params[:game_id])
    @booking.game = game

    @booking.save
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
