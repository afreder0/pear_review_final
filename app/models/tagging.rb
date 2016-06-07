class Tagging < ActiveRecord::Base

  belongs_to :dish , :class_name => "Dish", :foreign_key => "dish_id"

  belongs_to :tag , :class_name => "Tag", :foreign_key => "tag_id"

end
