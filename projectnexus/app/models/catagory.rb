class Catagory < ActiveRecord::Base
  has_many :projects, :foreign_key => "catagory_id"
  attr_accessible :name
end
