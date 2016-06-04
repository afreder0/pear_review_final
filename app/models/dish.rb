class Dish < ActiveRecord::Base
has_many :dishings , :class_name => "Dishing", :foreign_key => "dish_id"
end
