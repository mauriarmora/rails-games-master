class AddCoordinatesToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :latitude, :float
    add_column :games, :longitude, :float
  end
end
