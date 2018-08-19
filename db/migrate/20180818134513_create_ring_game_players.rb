class CreateRingGamePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :ring_game_players do |t|

      t.references :player_id
      t.references :ring_game_id
      t.timestamps
    end
  end
end
