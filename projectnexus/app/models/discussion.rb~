class Discussion < ActiveRecord::Base
  
  validates_presence_of :name

  belongs_to :project
  has_many :comments

  attr_accessible :name
end
