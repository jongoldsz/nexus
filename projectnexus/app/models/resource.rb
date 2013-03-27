class Resource < ActiveRecord::Base
      validates_presence_of :name
      validates_presence_of :description
      validates_presence_of :quantity

      belongs_to :user, :class_name => User
      has_and_belongs_to_many :projects, :foreign_key => "resource_id"
      has_many :files, :foreign_key => "resource_id"

  attr_accessible :description, :name, :quantity
end
