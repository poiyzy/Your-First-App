class PostsController < ApplicationController
  before_filter :find_post, except: [:new, :create, :index]
  before_filter :require_user, except: [:show, :index]

  def index
    @posts = Post.all.sort_by { |post| post.vote_number}.reverse
  end

  def show
    @comments = @post.comments
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.new(params[:post])
    post.user = current_user
    post.save
    redirect_to :back
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
