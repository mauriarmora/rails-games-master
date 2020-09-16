class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
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
    params.require(:game).permit(:name, :description, :price, :category, :condition, :age, :number_of_players, :game_time, :photo)
  end
end
