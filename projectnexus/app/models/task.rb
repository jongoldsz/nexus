class Task < ActiveRecord::Base
  validates_presence_of :description
  validates_presence_of :duedate
  validates_presence_of :name
  validates_presence_of :status

  has_many :tasks
  belongs_to :task
  belongs_to :objective
  belongs_to :user

  attr_accessible :description, :duedate, :name, :status
end
