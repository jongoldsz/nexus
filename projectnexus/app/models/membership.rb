class Membership < ActiveRecord::Base

      validates_presence_of :level
      validates_presence_of :name
      belongs_to :level, :class_name => Level
      belongs_to :user, :class_name => User
      belongs_to :project, :class_name => Project
      attr_accessible :level, :name
end
