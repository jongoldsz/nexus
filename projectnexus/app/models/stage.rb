class Stage < ActiveRecord::Base

      validates_presence_of :name
      has_many :projects, :foreign_key => "stage_id"
      attr_accessible :name
end
