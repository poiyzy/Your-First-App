class Vote < ActiveRecord::Base
  attr_accessible :post, :direction

  belongs_to :post
end
