class CreateRoutes < ActiveRecord::Migration[5.1]
  def change
    create_table :routes do |t|
      t.string :name
      t.string :color
      t.integer :stops
      t.text :stations

      t.timestamps
    end
  end
end
