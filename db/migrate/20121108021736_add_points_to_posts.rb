class AddPointsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :upvotes, :integer, default: 0
    add_column :posts, :downvotes, :integer, default: 0
    add_column :posts, :points, :interger, default: 0
  end
end
