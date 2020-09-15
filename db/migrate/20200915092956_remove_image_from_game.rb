class RemoveImageFromGame < ActiveRecord::Migration[6.0]
  def change
    remove_columns :games, :image
  end
end
