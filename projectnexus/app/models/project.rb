class Project < ActiveRecord::Base
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
  has_one :catagory, :class_name => Category
  has_one :location, :class_name => Location
  has_many :objectives,:foreign_key => "project_id"
  has_many :supporters,:foreign_key => "project_id"
  has_many :memberships,:foreign_key => "project_id"
  has_many :blogentries,:foreign_key => "project_id"
  has_many :messages, :foreign_key => "project_id"

  attr_accessible :description, :name, :pitch, :status, :user_id, :miniimage, :location_id, :category_id, :featured
end
