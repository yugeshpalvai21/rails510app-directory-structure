class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #http_basic_authenticate_with name: 'yugeshpalvai', password: 'sachin11'
  helper_method :authenticate_user!
  helper_method :user_signed_in?
  helper_method :current_user

  def user_signed_in?
    session[:user_id] ? true : false
  end

  def authenticate_user!
    unless user_signed_in?
      redirect_to login_path, notice: 'please login to perform your action'
    end
  end

  def current_user
    User.find_by(id: session[:user_id])
  end
end
