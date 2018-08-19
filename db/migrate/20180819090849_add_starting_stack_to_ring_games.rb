class AddStartingStackToRingGames < ActiveRecord::Migration[5.2]
  def change
    add_column :ring_games, :starting_stack, :integer
  end
end
