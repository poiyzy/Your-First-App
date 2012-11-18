class ApplicationController < ActionController::Base
  helper_method :logged_in?, :current_user
  protect_from_forgery

  def current_user
    session[:user]
  end

  def logged_in?
    !!current_user
  end

  def require_user
    if !logged_in?
      redirect_to login_path, error: "You must be logged in to do this"
    end
  end
end
