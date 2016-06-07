class Dishing < ActiveRecord::Base
  has_many :favorites , :class_name => "Favorite", :foreign_key => "dishing_id"
  has_many :pics , :class_name => "Pic", :foreign_key => "dishing_id"

  belongs_to :restaurant , :class_name => "Restaurant", :foreign_key => "restaurant_id"
  belongs_to :dish , :class_name => "Dish", :foreign_key => "dish_id"
  validates :restaurant_id, :presence => true
  validates :dish_id, :presence => true


end
