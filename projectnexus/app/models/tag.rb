class Tag < ActiveRecord::Base
      validates_presence_of :name

      has_many :projecttags, :foreign_key => "tag_id"
      has_many :projects, :through => :projecttags

  attr_accessible :name
end
