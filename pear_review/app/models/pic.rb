class Pic < ActiveRecord::Base

  belongs_to :user
  
  belongs_to :dishing , :class_name => "Dishing", :foreign_key => "dishing_id"
end
