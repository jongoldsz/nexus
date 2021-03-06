class Discussion < ActiveRecord::Base
  
  validates_presence_of :name

  belongs_to :project, :class_name => Project
  has_many :comments, :foreign_key => "discussion_id"

  attr_accessible :name
end
