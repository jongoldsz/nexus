class Message < ActiveRecord::Base
  belongs_to :sender, :class_name => User, :foreign_key => "from_user_id"
  has_one :recipient, :class_name => User, :foreign_key => "to_user_id"
  attr_accessible :from_user_id, :message, :project_id, :replied, :subject, :to_user_id
end
