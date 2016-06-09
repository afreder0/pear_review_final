class Dish < ActiveRecord::Base
has_many :dishings , :class_name => "Dishing", :foreign_key => "dish_id", :dependent => :destroy
  has_many :taggings , :class_name => "Tagging", :foreign_key => "dish_id", :dependent => :destroy


end
