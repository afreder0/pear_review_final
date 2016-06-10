class Restaurant < ActiveRecord::Base
has_many :dishings , :class_name => "Dishing", :foreign_key => "restaurant_id", :dependent => :destroy
validates :city, :presence => true
has_and_belongs_to_many :dishes, join_table: :dishings, :dependent => :destroy

end
