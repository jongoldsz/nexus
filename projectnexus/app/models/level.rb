class Level < ActiveRecord::Base

      validates_presence_of :name
      validates_presence_of :rank

      belongs_to :project, :class_name => Project
      has_many :memberships, :foreign_key => "level_id"
  attr_accessible :name, :rank
end
