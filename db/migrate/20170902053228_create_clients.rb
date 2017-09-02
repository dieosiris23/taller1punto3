class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :idcard
      t.string :name
      t.boolean :benefit
      t.integer :balance

      t.timestamps
    end
  end
end
