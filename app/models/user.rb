class User < ActiveRecord::Base
  attr_accessible :username, :password, :password_digest
  has_secure_password

  has_many :comments
  has_many :posts

  validate :username, presence: true
  validate :password, presence: true
end
