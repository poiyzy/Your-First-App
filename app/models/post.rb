class Post < ActiveRecord::Base
  attr_accessible :title, :url, :points

  has_many :comments
end
