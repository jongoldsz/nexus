class Supporter < ActiveRecord::Base

  belongs_to :user, :class_name => User
  belongs_to :project, :class_name => Project

  attr_accessible :project_id, :user_id

end
