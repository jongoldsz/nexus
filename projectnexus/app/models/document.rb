class Document < ActiveRecord::Base
      validates_presence_of :name
      validates_presence_of :type

      belongs_to :user
      belongs_to :task
      belongs_to :comment
      belongs_to :resource
      belongs_to :blogentry
      belongs_to :project
      belongs_to :objective

  attr_accessible :downloads, :name, :type
end
