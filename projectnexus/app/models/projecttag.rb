class Projecttag < ActiveRecord::Base
      belongs_to :project, :class_name => Project
      belongs_to :tag, :class_name => Tag
  attr_accessible :project_id, :tag_id
end
