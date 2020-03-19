class SessionsController < ApplicationController
  def new
    redirect_to root_path, notice: 'You Already Logged In...' if user_signed_in?
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

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Logged Out Successfully..'
  end

  private

  def user_authenticated
    @user && @user.authenticate(params[:password])
  end

end
