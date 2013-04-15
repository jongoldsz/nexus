class Membership < ActiveRecord::Base

      validates_presence_of :name
      validates_presence_of :level_id
      validates_presence_of :project_id
      validates_presence_of :user_id
      belongs_to :level, :class_name => Level
      belongs_to :user, :class_name => User
      belongs_to :project, :class_name => Project
      attr_accessible :level_id, :name, :project_id, :user_id

end
