class Objective < ActiveRecord::Base
  validates_presence_of :description
  validates_presence_of :name

  belongs_to :project, :class_name => Project
  has_many :tasks, :foreign_key => "objective_id"
  has_many :documents, :foreign_key => "objective_id"
  attr_accessible :description, :name, :project_id
end
