class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :anme
      t.string :address
      t.string :phone
      t.string :website

      t.timestamps
    end
  end
end
