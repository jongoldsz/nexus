class User < ActiveRecord::Base
  validates_presence_of :email
  validates_presence_of :first
  validates_presence_of :last
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  attr_accessible :address1, :address2, :city, :email, :first, :honorific, :last, :middle, :preferredname, :state, :suffix, :zipcode, :provider, :uid

  has_many :authentications, :foreign_key => "user_id"
  has_many :projects, :foreign_key => "user_id"
  has_many :memberships, :foreign_key => "user_id"
  has_many :supporters, :foreign_key => "user_id"
  has_many :files, :foreign_key => "user_id"
  has_many :tasks, :foreign_key => "user_id"
  has_many :blogentries, :foreign_key => "user_id"
  has_many :resources, :foreign_key => "user_id"

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.first = auth["info"]["first_name"]
      user.last = auth["info"]["last_name"]
      user.email = auth["info"]["email"]
    end
  end

  def full_name
     first + ' ' + last
  end

end
