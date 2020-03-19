class UsersController < ApplicationController
  def new
    redirect_to root_path, notice: 'You Already Logged In...' if user_signed_in?
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, notice: 'New User Created Successfully'
      session[:user_id] = @user.id
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
