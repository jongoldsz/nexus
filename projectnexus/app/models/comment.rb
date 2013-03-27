class Comment < ActiveRecord::Base
  
  validates_presence_of :message
  belongs_to :user, :class_name => User
  belongs_to :project, :class_name => Project
  belongs_to :objective, :class_name => Objective
  belongs_to :task, :class_name => Task
  has_many :files, :foreign_key => "comment_id"

  attr_accessible :message
end
