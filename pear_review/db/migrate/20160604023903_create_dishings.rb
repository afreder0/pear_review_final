class CreateDishings < ActiveRecord::Migration
  def change
    create_table :dishings do |t|
      t.integer :restaurant_id
      t.integer :dish_id

      t.timestamps

    end
  end
end
