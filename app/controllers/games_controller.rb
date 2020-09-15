class GamesController < ApplicationController
  def index; end

  def show; end

  def new
    @new_game = Game.new
  end

  def create
    @new_game = Game.new(game_params)
    @new_game.user = current_user
    @new_game.save

    redirect_to games_path(@new_game)
  end

  def edit; end

  def update; end

  def destroy; end

  private

  def game_params
    params.require(:game).permit(:name, :description, :price, :category, :condition, :age, :number_of_players, :game_time)
  end
end
