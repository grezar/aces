class CreateHomeOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :home_owners do |t|
      t.integer :home_id
      t.integer :player_id

      t.timestamps
    end
  end
end
