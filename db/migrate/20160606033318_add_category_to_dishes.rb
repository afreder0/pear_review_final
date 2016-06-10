class AddCategoryToDishes < ActiveRecord::Migration
  def change
    add_column :dishes, :category, :string
  end
end
