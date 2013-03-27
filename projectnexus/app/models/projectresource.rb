class Projectresource < ActiveRecord::Base
      belongs_to :project, :class_name => Project
      belongs_to :resource, :class_name => Resource
 # attr_accessible :project_id, :resource_id
end
