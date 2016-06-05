class Favorite < ActiveRecord::Base
  belongs_to :dishing , :class_name => "Dishing", :foreign_key => "dishing_id"
  belongs_to :user , :class_name => "User", :foreign_key => "user_id"
  validates :user_id, :presence => true
  validates :dishing_id, :presence => true
end
