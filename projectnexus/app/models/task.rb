class Task < ActiveRecord::Base
  validates_presence_of :description
  validates_presence_of :duedate
  validates_presence_of :name

  has_many :tasks, :foreign_key => "task_id"
  belongs_to :task, :class_name => Task
  belongs_to :objective, :class_name => Objective
  belongs_to :user, :class_name => User

  attr_accessible :description, :duedate, :name, :status, :objective_id, :user_id
end
