class Resource < ActiveRecord::Base
      validates_presence_of :name
      validates_presence_of :description
      validates_presence_of :quantity

      belongs_to :user, :class_name => User
      has_many :projectresources, :foreign_key => "resource_id"
      has_many :projects, :through => :projectresources
      has_many :files, :foreign_key => "resource_id"

  attr_accessible :description, :name, :quantity
end
