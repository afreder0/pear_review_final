class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.text :dish_comment
      t.integer :dishing_id
      t.integer :user_id

      t.timestamps

    end
  end
end
