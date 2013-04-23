class Category < ActiveRecord::Base
  has_many :projects, :foreign_key => "category_id"
  attr_accessible :name
end
