class CreateStations < ActiveRecord::Migration[5.1]
  def change
    create_table :stations do |t|
      t.string :name
      t.string :branch
      t.text :routes

      t.timestamps
    end
  end
end
