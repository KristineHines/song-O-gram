class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :first_name, :last_name, :email, :username, :password, :password_confirmation, :admin
  has_many :recipes
  validates_confirmation_of :password

end
