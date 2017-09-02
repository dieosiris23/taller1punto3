class CreateGarages < ActiveRecord::Migration[5.1]
  def change
    create_table :garages do |t|
      t.string :adress
      t.integer :capacity
      t.string :manager
      t.integer :businventory

      t.timestamps
    end
  end
end
