class CreateChipChanges < ActiveRecord::Migration[5.2]
  def change
    create_table :chip_changes do |t|
      t.integer :player_id
      t.integer :ring_game_id

      t.timestamps
    end
  end
end
