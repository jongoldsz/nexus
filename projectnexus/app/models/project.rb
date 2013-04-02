class Project < ActiveRecord::Base
  validates_presence_of :description
  validates_presence_of :name
  validates_presence_of :pitch
  validates_presence_of :status
  validates_inclusion_of :status, :in=>0..100
  validates_presence_of :user_id

  belongs_to :user, :class_name => User
  has_many :projecttags, :foreign_key => "project_id"
  has_many :projectresources, :foreign_key => "project_id"
  has_many :tags, :through => :projecttags
  has_many :resources, :through => :projectresources
  has_one :stage, :class_name => Stage

  attr_accessible :description, :name, :pitch, :status, :user_id, :miniimage
end
