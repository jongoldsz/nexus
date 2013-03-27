class Document < ActiveRecord::Base
      validates_presence_of :name
      validates_presence_of :type

      belongs_to :user, :class_name => User
      belongs_to :task, :class_name => Task
      belongs_to :comment, :class_name => Comment
      belongs_to :resource, :class_name => Resource
      belongs_to :blogentry, :class_name => Blogentry
      belongs_to :project, :class_name => Project
      belongs_to :objective, :class_name => Objective

  attr_accessible :downloads, :name, :type
end
