class PostsController < ApplicationController
  before_filter :find_post, except: [:new, :create, :index]

  def index
    @posts = Post.order("points DESC")
  end

  def show
    @comments = @post.comments
    @comment = @post.comments.new
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.new(params[:post])
    post.save
    redirect_to :back
  end

  def up
    @post.upvotes += 1
    @post.points += 1
    @post.save
    redirect_to :back
  end

  def down
    @post.downvotes += 1
    @post.points -= 1
    @post.save
    redirect_to :back
  end

  protected
  def find_post
    @post = Post.find(params[:id])
  end
end
