class Comment < ActiveRecord::Base
  
  validates_presence_of :message
  belongs_to :user
  belongs_to :project
  belongs_to :objective
  belongs_to :task
  has_many :files

  attr_accessible :message
end
