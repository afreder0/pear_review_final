class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :cover_image
      t.text :short_description
      t.integer :lng
      t.integer :lat
      t.string :price
      t.string :neighborhood
      t.integer :zip
      t.string :state
      t.string :city
      t.string :street
      t.string :name

      t.timestamps

    end
  end
end
