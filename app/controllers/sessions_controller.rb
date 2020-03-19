class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:email])
    if user_authenticated
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'logged in successfully...'
    else
      redirect_to login_path, notice: 'Something Went Wrong With Your Credentials...'
    end
  end

  private

  def user_authenticated
    @user && @user.authenticate(params[:password])
  end

end
