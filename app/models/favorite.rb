class Favorite < ActiveRecord::Base
  belongs_to :dishing , :class_name => "Dishing", :foreign_key => "dishing_id"
  belongs_to :user , :class_name => "User", :foreign_key => "user_id"
end
