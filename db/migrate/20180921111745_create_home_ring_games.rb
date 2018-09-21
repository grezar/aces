class CreateHomeRingGames < ActiveRecord::Migration[5.2]
  def change
    create_table :home_ring_games do |t|
      t.integer :home_id
      t.integer :ring_game_id

      t.timestamps
    end
  end
end
