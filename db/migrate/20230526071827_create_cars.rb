class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.integer :id
      t.string :name
      t.integer :price
      t.text :description
      t.string :color

      t.timestamps
    end
  end
end
