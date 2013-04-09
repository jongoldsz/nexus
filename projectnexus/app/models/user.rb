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

  has_many :authentications, :foreign_key => "user_id"
  has_many :projects, :foreign_key => "user_id"
  has_many :memberships, :foreign_key => "user_id"
  has_many :files, :foreign_key => "user_id"
  has_many :tasks, :foreign_key => "user_id"
  has_many :blogentries, :foreign_key => "user_id"
  has_many :resources, :foreign_key => "user_id"

#  devise :database_authenticatable, :registerable, 
#         :recoverable, :rememberable, :trackable, :validatable

  def full_name
     first + ' ' + last
  end

end
