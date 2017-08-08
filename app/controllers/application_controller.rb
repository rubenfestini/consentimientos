class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :load_user

  def load_user
    @user = session[:user_id] ? User.find(session[:user_id]) : create_user
  end

  def create_user
    user = User.create!
    session[:user_id] = user.id
    user
  end

end
