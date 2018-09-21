class CreateChips < ActiveRecord::Migration[5.2]
  def change
    create_table :chips do |t|
      t.integer :amount

      t.timestamps
    end
  end
end
