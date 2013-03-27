class Membership < ActiveRecord::Base

      validates_presence_of :level
      validates_presence_of :name
      has_many :users
      belongs_to :project
      attr_accessible :level, :name
end
