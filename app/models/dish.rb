class Dish < ActiveRecord::Base
has_many :dishings , :class_name => "Dishing", :foreign_key => "dish_id"
  has_many :taggings , :class_name => "Tagging", :foreign_key => "dish_id"


end
