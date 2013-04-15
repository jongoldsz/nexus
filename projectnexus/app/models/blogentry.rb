class Blogentry < ActiveRecord::Base

      validates_presence_of :content
      validates_presence_of :title

      belongs_to :user, :class_name => User
      belongs_to :project, :class_name => Project
      has_many :files, :foreign_key => "blogentry_id"
      

      attr_accessible :content, :highlighted, :title, :project_id, :user_id
end
