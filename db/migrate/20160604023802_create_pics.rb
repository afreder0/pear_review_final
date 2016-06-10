class CreatePics < ActiveRecord::Migration
  def change
    create_table :pics do |t|
      t.integer :user_id
      t.string :image
      t.integer :dishing_id

      t.timestamps

    end
  end
end
