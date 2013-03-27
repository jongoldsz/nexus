class Resource < ActiveRecord::Base
      validates_presence_of :name
      validates_presence_of :description
      validates_presence_of :quantity

      belongs_to :user
      has_and_belongs_to_many :projects
      has_many :files

  attr_accessible :description, :name, :quantity
end
