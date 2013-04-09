class Authentication < ActiveRecord::Base
  belongs_to :user, :class_name => User
  attr_accessible :provider, :uid, :user_id
end
