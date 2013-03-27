class Stage < ActiveRecord::Base

      validates_presence_of :name
      has_many :projects
      attr_accessible :name
end
