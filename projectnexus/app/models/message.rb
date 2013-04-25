class Message < ActiveRecord::Base
  belongs_to :sender, :class_name => User, :foreign_key => "from_user_id"
  belongs_to :recipient, :class_name => User, :foreign_key => "to_user_id"
  belongs_to :project, :class_name => Project
  attr_accessible :from_user_id, :message, :project_id, :replied, :subject, :to_user_id
end
