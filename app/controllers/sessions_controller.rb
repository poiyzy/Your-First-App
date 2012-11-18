class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user] = user
      redirect_to posts_path, notice: "You have been logged in!"
    else
      flash[:error] = "Couldn't let log you in!"
      redirect_to login_path
    end
  end

  def destroy
    session[:user] = nil
    redirect_to root_path, notice: "You have been logged out!"
  end

end
