class User < ActiveRecord::Base
  validates_presence_of :address1
  validates_presence_of :city
  validates_presence_of :email
  validates_presence_of :first
  validates_presence_of :last
  validates_presence_of :state
  validates_presence_of :zipcode
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates_length_of :zipcode, :is => 5
  validates_inclusion_of :zipcode, :in => 00000..99999
  attr_accessible :address1, :address2, :city, :email, :first, :honorific, :last, :middle, :preferredname, :state, :suffix, :zipcode

  has_many :projects
end
