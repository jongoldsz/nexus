class Blogentry < ActiveRecord::Base

      validates_presence_of :content
      validates_presence_of :title

      belongs_to :user
      belongs_to :project
      has_many :files
      

      attr_accessible :content, :highlighted, :title
end
