class CreatePlayerChips < ActiveRecord::Migration[5.2]
  def change
    create_table :player_chips do |t|
      t.integer :player_id
      t.integer :chip_id

      t.timestamps
    end
  end
end
