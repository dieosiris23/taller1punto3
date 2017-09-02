class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :lastaname
      t.string :station
      t.integer :workshift

      t.timestamps
    end
  end
end
