class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :load_user

  def load_user
    begin
      @user = session[:user_id] ? User.find(session[:user_id]) : create_user
    rescue ActiveRecord::RecordNotFound
      @user = create_user
    end
  end

  def create_user
    user = User.create!
    session[:user_id] = user.id
    user
  end

end
