class BookingsController < ApplicationController
  before_action :booking_params, only: [:create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.create(booking_params)
    @game = Game.find(params[:game_id])
    @booking.game = @game
    @booking.user = current_user

    if @booking.save
      redirect_to game_path(@game), notice: "Your booking request was created, now just wait for it to be approved."
    else
      render "games/show"
    end
  end

  def accept
    @booking = Booking.find(params[:booking_id])
    @booking.status = "accepted"

    @booking.save

    redirect_to dashboard_path
  end

  def decline
    @booking = Booking.find(params[:booking_id])
    @booking.status = "declined"

    @booking.save

    redirect_to dashboard_path
  end

  private

  def sanitize_params
    return unless params[:booking][:start_date].include?(" to ")

    booking_dates = params[:booking][:start_date].split(" to ")

    params[:booking][:start_date] = booking_dates[0]
    params[:booking][:end_date] = booking_dates[1]
  end

  def booking_params
    # --> {"start_date"=>"2020-09-17 to 2020-09-18", "end_date"=>"September 18, 2020"},
    sanitize_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
