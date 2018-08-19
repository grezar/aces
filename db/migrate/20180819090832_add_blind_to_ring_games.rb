class AddBlindToRingGames < ActiveRecord::Migration[5.2]
  def change
    add_column :ring_games, :blind, :integer
  end
end
