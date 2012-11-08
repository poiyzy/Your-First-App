class PostsController < ApplicationController
  before_filter :find_post, except: [:new, :create, :index]

  def index
    @posts = Post.all
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
    redirect_to @post
  end

  def up
    @post.points += 1
    @post.save
    redirect_to :back
  end

  def down
    @post.points -= 1
    @post.save
    redirect_to :back
  end

  protected
  def find_post
    @post = Post.find(params[:id])
  end
end
