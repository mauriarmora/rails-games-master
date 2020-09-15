class AddLocationToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :location, :string
  end
end
