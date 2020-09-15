class AddDefaultValueToAvailableGameTable < ActiveRecord::Migration[6.0]
  def change
    change_column :games, :available, :boolean, default: true
  end
end
