class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :car_type
      t.string :brand
      t.float :fee_per_day
      t.string :color
      t.string :image
      t.boolean :rented

      t.timestamps
    end
  end
end
