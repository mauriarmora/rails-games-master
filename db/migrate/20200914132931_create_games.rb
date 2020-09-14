class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :price
      t.string :category
      t.string :condition
      t.integer :age
      t.string :number_of_players
      t.integer :game_time
      t.string :image
      t.boolean :available
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
