class CreateDrivers < ActiveRecord::Migration[5.1]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :bus
      t.text :routes
      t.integer :salary
      t.integer :tours

      t.timestamps
    end
  end
end
