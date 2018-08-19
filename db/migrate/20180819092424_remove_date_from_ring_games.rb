class RemoveDateFromRingGames < ActiveRecord::Migration[5.2]
  def change
    remove_column :ring_games, :date, :date
  end
end
