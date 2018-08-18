class CreateRingGames < ActiveRecord::Migration[5.2]
  def change
    create_table :ring_games do |t|
      t.integer :number_of_times
      t.date :date
      t.timestamps
    end
  end
end
