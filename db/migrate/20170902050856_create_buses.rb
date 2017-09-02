class CreateBuses < ActiveRecord::Migration[5.1]
  def change
    create_table :buses do |t|
      t.string :licenseplate
      t.integer :capacity
      t.string :brand
      t.date :startdate

      t.timestamps
    end
  end
end
