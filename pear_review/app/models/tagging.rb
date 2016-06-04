class Tagging < ActiveRecord::Base

  belongs_to :dishing , :class_name => "Dishing", :foreign_key => "dishing_id"

  belongs_to :tag , :class_name => "Tag", :foreign_key => "tag_id"

end
