class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      sql_query = " \
      games.name ILIKE :query \
      OR games.description ILIKE :query \
      OR games.category ILIKE :query \
      "
      @games = Game.where(sql_query, query: "%#{params[:query]}%")
    else
      @games = Game.all
    end

    @markers = @games.geocoded.map do |game|
      {
        lat: game.latitude,
        lng: game.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { game: game }),
        image_url: helpers.asset_url('dicex.png')
      }
    end
  end

  def show
    @game = Game.find(params[:id])
    @markers = [
      {
        lat: @game.latitude,
        lng: @game.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { game: @game }),
        image_url: helpers.asset_url('dicex.png')
      }
    ]

    @bookings = @game.user.bookings
    @booking = Booking.new
  end

  def new
    @new_game = Game.new
  end

  def create
    @new_game = Game.new(game_params)
    @new_game.user = current_user

    if @new_game.save
      redirect_to game_path(@new_game)
    else
      render :new
    end
  end

  def edit
    @edit_game = Game.find(params[:id])
  end

  def update
    update_game = Game.find(params[:id])
    update_game.update(game_params)

    redirect_to game_path(update_game)
  end

  def destroy
    delete_game = Game.find(params[:id])
    delete_game.destroy

    redirect_to games_path
  end

  private

  def game_params
    params.require(:game).permit(:name, :description, :price, :category, :condition, :age, :number_of_players, :game_time, :photo, :location)
  end

end
