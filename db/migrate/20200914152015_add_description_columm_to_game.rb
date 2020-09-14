class AddDescriptionColummToGame < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :description, :text
  end
end
