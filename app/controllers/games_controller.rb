class GamesController < ApplicationController
  def index
    @games = Game.all
  end

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

  def edit
    @edit_game = Game.find(params[:id])
  end

  def update
    update_game = Game.find(params[:id])
    update_game.update(game_params)

    redirect_to games_path(update_game)
  end

  def destroy
    delete_game = Game.find(params[:id])
    delete_game.destroy

    redirect_to games_path
  end

  private

  def game_params
    params.require(:game).permit(:name, :description, :price, :category, :condition, :age, :number_of_players, :game_time)
  end
end
