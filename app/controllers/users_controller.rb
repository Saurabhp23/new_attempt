class UsersController < ApplicationController
  def show
      @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def new
  end

  def create
    @user = User.new(params.require(:user).permit(:name, :about))
    @user.save
  end
end