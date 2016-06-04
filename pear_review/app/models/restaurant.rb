class Restaurant < ActiveRecord::Base
has_many :dishings , :class_name => "Dishing", :foreign_key => "restaurant_id"
end
