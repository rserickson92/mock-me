require 'bcrypt'
class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
    params = user_params
  	@user = User.new(params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to posts_path
    else
      render "new"
    end
  end

  def show
    user = User.find(params[:id])
    @interviews = user.get_interviews
  end

  private

  def user_params
    params.require(:user).permit(:name, :password)
  end

end
