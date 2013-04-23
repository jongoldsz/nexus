class Location < ActiveRecord::Base
  has_many :projects, :foreign_key => "location_id"
  attr_accessible :name
end
