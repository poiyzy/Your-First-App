class VotesController < ApplicationController
  before_filter :find_post

  def up
    Vote.create(direction: "up", post: @post)
    redirect_to :back
  end

  def down
    Vote.create(direction: "down", post: @post)
    redirect_to :back
  end

  def find_post
    @post = Post.find(params[:post_id])
  end
end
