class Post < ActiveRecord::Base
  attr_accessible :title, :url

  has_many :comments

  def count_points
    self.points = [upvotes - downvotes, 0].max
    self.points
  end

end
